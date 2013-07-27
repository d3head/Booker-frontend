'use strict'

angular.module( 'bookerApp' )
  .controller 'StatsCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url + '/stats/' )
      .success(( data ) ->
        $scope.stats = data
      )
      .error(( data ) ->
        $scope.stats = 'Oops, error'
      )
