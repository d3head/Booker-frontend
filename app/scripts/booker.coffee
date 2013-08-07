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

angular.module( 'bookerApp', ['pascalprecht.translate'] )
