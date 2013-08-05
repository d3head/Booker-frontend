'use strict'

angular.module( 'bookerApp' )
  .controller 'BookCtrl', ( $scope, $http, $routeParams ) ->
    $http.get( booker.api.url + booker.api.books + 'Dune' )
      .success(( data ) -> 
        
        console.log $routeParams.id
      
        $scope.book = data
      )
      .error(( data ) ->
        $scope.book = 'Oops, error'
      )