'use strict'

window.booker = {
  api: {
    url: '//api.booker.am',
    stats: '/stats/',
    books: '/books/',
    authors: '/authors/',
    categories: '/categories/'
  },
  colors: [
    '#e74c3c',
    '#2ecc71',
    '#3498db',
    '#d35400',
    '#2980b9',
  ],
}

angular.module( 'bookerApp', ['ngCookies', 'pascalprecht.translate', 'restangular', 'siyfion.sfTypeahead', 'ngRoute', 'ngSanitize', 'ngAnimate', 'ngTouch'] )
  .config [ "$translateProvider", ($translateProvider) ->
    $translateProvider.translations 'ru',
      lang_ru
      
    $translateProvider.translations 'en',
      lang_en
      
    $translateProvider.preferredLanguage 'ru'
    
    $translateProvider.useLocalStorage()
  ], [ (RestangularProvider) ->
    RestangularProvider.setBaseUrl booker.api.url
  ]