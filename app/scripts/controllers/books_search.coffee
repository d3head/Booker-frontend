'use strict'

angular.module( 'bookerApp' )
  .controller 'BooksSearchCtrl', ( $scope, $http, $routeParams, $location ) ->
    #$scope.url = 'search/' + $routeParams.id
    #$scope.urlState = 0
      
    $scope.search = ->
      if $routeParams.id
        if $scope.searchQuery 
          $scope.url     = 'search/' + $scope.searchQuery
          $location.url 'books/search/' + $scope.searchQuery
        else
          if $scope.urlState 
            $location.url 'books/search/'
            $("#searchQuery").val('')
          else
            $scope.url = 'search/' + $routeParams.id
            $("#searchQuery").val($routeParams.id)
      else
        if $scope.searchQuery
          $scope.url     = 'search/' + $scope.searchQuery
          $location.url 'books/search/' + $scope.searchQuery
        else
          $scope.url = ''
          $("#searchQuery").val('')
        	            
      $http.get( booker.api.url + booker.api.books + $scope.url )
        .success(( data ) -> 
          for i in data
            do (i) ->
              i.size = 'medium' if i.title.length >= 9
              i.size = 'small' if i.title.length >= 11
              return data
          
          if data < 1
            $scope.empty = "Увы, ничего не найдено!"
          else
            $("#empty").hide()
          
          if($scope.books > 0)
            $scope.books = 0
          
          $scope.books = data
          
          $scope.urlState = 1
        )
        .error(( data ) ->
          $scope.books = 'Oops, error'
        )
        
    $scope.search()
    $scope.searchQuery = null
  .factory 'BooksSearchCtrl', (TheObject) ->
    service = (obj) ->
      @obj = obj
  
    new service(TheObject)