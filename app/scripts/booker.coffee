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
  lang_en: {
    books_by: "by"
  },
  lang_ru: {
    books_by: "от"
  }
}


translations =
  en:
    books_by: "by"
    books_author: "author"

  ru:
    books_by: "от"
    books_author: "автор"

angular.module( 'bookerApp', ['pascalprecht.translate'] )
  .config [ "$translateProvider", ($translateProvider) ->
    $translateProvider.translations 'en',
      booker.lang_en
      
    $translateProvider.translations 'ru',
      booker.lang_ru
      
    $translateProvider.preferredLanguage 'ru'
  ]