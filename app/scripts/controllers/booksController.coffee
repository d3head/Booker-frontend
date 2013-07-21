'use strict'

angular.module('bookerApp')
  .controller 'BooksCtrl', ( $scope, $http ) ->
    $http.get( '//localhost:1337/' )
      .success((data) ->
        $scope.books = data
      )
      .error((data) ->
        $scope.books = data
        console.log data
      )
