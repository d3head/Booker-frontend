'use strict'

angular.module( 'bookerApp' )
  .controller 'BookCtrl', ( $scope, $http ) ->
    book_id = id: @params.id
    $http.get( booker.api.url + booker.api.books + book_id )
      .success(( data ) -> 
        data.size = 'medium' if data.title.length >= 9
        data.size = 'small' if data.title.length >= 11
      
        $scope.books = data
      )
      .error(( data ) ->
        $scope.books = 'Oops, error'
      )