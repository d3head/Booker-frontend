'use strict'

angular.module( 'bookerApp' )
  .controller 'BookCtrl', ( $scope, $http, $routeParams ) ->
    $http.get( booker.api.url + booker.api.books + $routeParams.id )
      .success(( data ) -> 
        data.size = 'medium' if data.title.length >= 9
        data.size = 'small' if data.title.length >= 11
      
        $scope.book = data
      )
      .error(( data ) ->
        $scope.book = 'Oops, error'
      )