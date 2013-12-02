'use strict'

angular.module( 'bookerApp' )
  .controller 'BookerCtrl', ( $scope, $http, $translate, localStorageService ) ->

    menuLeft = document.getElementById( 'bookerMenu' )
    showLeftPush = document.getElementById( 'bookerMenuButton' )
    body = document.body
    showLeftPush.onclick = ( e ) ->
      e.preventDefault()
      classie.toggle this, 'active'
      classie.toggle body, 'active'
      classie.toggle menuLeft, 'active'
      
    $scope.changeLanguage = (langKey) ->
      $translate.uses langKey
      
    $scope.closeLeft = ->
      classie.remove showLeftPush, 'active'
      classie.remove body, 'active'
      classie.remove menuLeft, 'active'
      
    timer = undefined
    window.addEventListener 'scroll', (->
      clearTimeout timer
      body.classList.add 'disable-hover'  unless body.classList.contains('disable-hover')
      timer = setTimeout(->
        body.classList.remove 'disable-hover'
      , 500)
    ), false
    
    firstView = localStorageService.get 'firstView'
    
    unless firstView
      localStorageService.add 'firstView', 'yes'
      angular.element('#hello').show()
      
  .directive 'dynamicPlaceholder', ->
    restrict: 'A'
    link: ($scope, element, attrs) ->
      attrs.$observe 'dynamicPlaceholder', (value) ->
        element.attr 'placeholder', value
      
        
  .config [ '$httpProvider', ( $httpProvider ) ->
    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common[ 'X-Requested-With' ]
  ]