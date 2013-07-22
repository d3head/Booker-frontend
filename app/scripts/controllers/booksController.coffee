'use strict'

angular.module( 'bookerApp' )
  .controller 'BooksCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url )
      .success(( data ) ->
        $scope.books = data
      )
      .error(( data ) ->
        $scope.books = data
        console.log data
      )
