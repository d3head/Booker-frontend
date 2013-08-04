'use strict'

angular.module( 'bookerApp' )
  .controller 'BooksCtrl', ( $scope, $http ) ->
    $http.get( booker.api.url )
      .success(( data ) -> 
        for i in data
          do (i) ->
            $scope.size = medium if i.title.length > 10
            $scope.size = small if i.title.length > 20
      
        $scope.books = data
      )
      .error(( data ) ->
        $scope.books = 'Oops, error'
      )