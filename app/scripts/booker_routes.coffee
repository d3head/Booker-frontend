'use strict'

angular.module( 'bookerApp', [] )
  .config [ '$routeProvider', ( $routeProvider ) ->

    $routeProvider
      .when( '/', templateUrl: 'views/main.html', controller: 'BookerCtrl')
      .otherwise( redirectTo: '/' )
  ]