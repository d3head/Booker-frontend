'use strict'

angular.module( 'bookerApp' )
  .controller 'CategoriesCtrl', ( $scope, $http ) ->
    $http.get( booker.api.categories )
      .success(( data ) ->
        $scope.categories = data
      )
      .error(( data ) ->
        $scope.categories = data
        console.log data
      )