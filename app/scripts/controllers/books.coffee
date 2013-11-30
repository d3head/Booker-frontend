'use strict'

angular.module( 'bookerApp' )
  .controller 'BooksCtrl', ( $scope, $http, Restangular) ->
  
    $scope.more = (more) ->
      unless more
        $scope.lim1 = 0
      
      books = Restangular.all booker.api.url
      
      books.customGET( "", { q : $scope.lim1 }).then ( data ) -> 
          for i in data
            do (i) ->
              i.size = 'medium' if i.title.length >= 8
              i.size = 'small' if i.title.length >= 11
              return data
          
          if data.length > 0
            $('#show-more').show()
          
          if data.length < 12 or data < 12
            $("#show-more").hide()
          
          if data < 1 or data.length < 1
            $('#empty').show()
            $scope.empty = "Увы, ничего не найдено!"
            $('#show-more').hide()
          else
            $("#empty").hide()

          if more        
            $scope.books = $scope.books.concat data
          else
            $scope.books = data
        
      $scope.lim1 = $scope.lim1 + 12
        
    $scope.more()