'use strict'

angular.module( 'bookerApp' )
  .controller 'BookCtrl', ( $scope, $http, $routeParams ) ->
    $http.get( booker.api.url + booker.api.books + $routeParams.id )
      .success(( data ) -> 
        for i in data
          do (i) ->
            i.size = 'medium' if i.title.length >= 8
            i.size = 'small' if i.title.length >= 11
            return data
            
        if data < 1
          $scope.empty = "Увы, ничего не найдено!"
      
        $scope.books = data
      )
      .error(( data ) ->
        $scope.books = 'Oops, error'
      )