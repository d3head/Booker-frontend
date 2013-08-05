'use strict'

angular.module( 'bookerApp' )
  .controller 'StatsCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url + booker.api.stats )
      .success(( data ) ->
        $scope.stats = data
      )
      .error(( data ) ->
        $scope.stats = 'Oops, error'
      )
