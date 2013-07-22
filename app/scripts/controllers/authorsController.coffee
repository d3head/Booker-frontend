'use strict'

angular.module( 'bookerApp' )
  .controller 'AuthorsCtrl', ( $scope, $http ) ->
    $http.get( booker.api.authors )
      .success(( data ) ->
        $scope.authors = data
      )
      .error(( data ) ->
        $scope.authors = data
        console.log data
      )