'use strict'

angular.module( 'bookerApp' )
  .controller 'AuthorsCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url.authors )
      .success(( data ) ->
        $scope.authors = data
      )
      .error(( data ) ->
        $scope.authors = 'Oops, error'
      )