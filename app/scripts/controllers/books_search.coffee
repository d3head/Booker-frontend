'use strict'

angular.module( 'bookerApp' )
  .controller 'BooksSearchCtrl', ( $scope, $http, $routeParams, $location, Restangular ) ->
    #$scope.url = 'search/' + $routeParams.id
    #$scope.urlState = 0
      
    $scope.search = (more) ->
      unless more
        $scope.lim1 = 0
      
      unless more
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
      else
        $scope.url     = 'search/' + $routeParams.id
      
      books = Restangular.all booker.api.url + booker.api.books + $scope.url
      
      books.customGET( "", { q : $scope.lim1 }).then ( data ) ->
          for i in data
            do (i) ->
              i.size = 'medium' if i.title.length >= 8
              i.size = 'small' if i.title.length >= 11
              return data
          
          if data.length < 12 or data < 12
            $("#show-more").hide()
          
          if data < 1
            $scope.empty = "Увы, ничего не найдено!"
            $('#show-more').hide()
          else
            $("#empty").hide()
          
          
          if($scope.books > 0)
            $scope.books = 0
          
          if more        
            $scope.books = $scope.books.concat data
          else
            $scope.books = data
          
          $scope.urlState = 1
          
      $scope.lim1 = $scope.lim1 + 12
        
    $scope.search()
    $scope.searchQuery = null
