'use strict'

angular.module( 'bookerApp' )
  .controller 'BookerCtrl', ( $scope, $http ) ->
    $scope.awesomeThings = [ 'Why fucking not', 'AngularJS', 'Karma' ]

    menuLeft = document.getElementById( "bookerMenu" )
    showLeftPush = document.getElementById( "bookerMenuButton" )
    body = document.body
    showLeftPush.onclick = ->
      classie.toggle this, "active"
      classie.toggle body, "active"
      classie.toggle menuLeft, "active"