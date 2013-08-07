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

angular.module( 'bookerApp', ['pascalprecht.translate'] )
  .config [ "$translateProvider", ($translateProvider) ->
    $translateProvider.translations 'ru',
      languages.russian
      
    $translateProvider.translations 'en',
      languages.english
      
    $translateProvider.preferredLanguage 'ru'
  ]