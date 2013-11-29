'use strict'

angular.module( 'bookerApp' )
  .controller 'BooksCtrl', ( $scope, $http, Restangular, $route ) ->
  
    $scope.more = (more) ->
      unless more
        $scope.lim1 = 0
        
      $("#loader").show()
      
      books = Restangular.all booker.api.url
      
      books.customGET( "", { q : $scope.lim1 }).then ( data ) -> 
          for i in data
            do (i) ->
              i.size = 'medium' if i.title.length >= 8
              i.size = 'small' if i.title.length >= 11
              return data
              
          $("#show-more").hide()  if data.length % 2 isnt 0
          
          if data < 1
            $scope.empty = "Увы, ничего не найдено!"
            $('#show-more').hide()
          
          if more        
            $scope.books = $scope.books.concat data
          else
            $scope.books = data
        
      $scope.lim1 = $scope.lim1 + 12
      
      setTimeout ->
        $("#loader").hide()
        
    $scope.more()