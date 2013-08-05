'use strict'

angular.module( 'bookerApp' )
  .controller 'BookCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url + '/books/' + $scope.id )
      .success(( data ) -> 
        data.size = 'medium' if data.title.length >= 9
        data.size = 'small' if data.title.length >= 11
      
        $scope.book = data
      )
      .error(( data ) ->
        $scope.book = 'Oops, error'
      )