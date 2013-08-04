'use strict'

angular.module( 'bookerApp' )
  .controller 'AuthorsCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url )
      .success(( data ) ->
        $scope.books = data
      )
      .error(( data ) ->
        $scope.books = 'Oops, error'
      )