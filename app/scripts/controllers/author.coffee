'use strict'

angular.module( 'bookerApp' )
  .controller 'AuthorCtrl', ( $scope, $http, $routeParams ) ->
    $http.get( booker.api.url + booker.api.authors + $routeParams.name )
      .success(( data ) -> 
        for i in data
          do (i) ->
            i.size = 'medium' if i.title.length >= 9
            i.size = 'small' if i.title.length >= 11
            return data
        
        $scope.model = {
          books: data,
          author: $routeParams.name
        }
      )
      .error(( data ) ->
        $scope.books = 'Oops, error'
      )