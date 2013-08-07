'use strict'

angular.module( 'bookerApp', ['pascalprecht.translate'] )
  .controller 'BookerCtrl', ( $scope, $http ) ->

    menuLeft = document.getElementById( "bookerMenu" )
    showLeftPush = document.getElementById( "bookerMenuButton" )
    body = document.body
    showLeftPush.onclick = ( e ) ->
      e.preventDefault()
      classie.toggle this, "active"
      classie.toggle body, "active"
      classie.toggle menuLeft, "active"
      
        
  .config ["$httpProvider", ($httpProvider) ->
    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common["X-Requested-With"]
  ]
  
  .config ["$translateProvider", ($translateProvider) ->
    $translateProvider.translations "en",
      books_by: "by"

    $translateProvider.translations "ru",
      books_by: "от"

    $translateProvider.preferredLanguage "ru"
  ]