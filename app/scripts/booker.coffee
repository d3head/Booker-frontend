'use strict'

window.booker = {
  api: {
    url: '//localhost:1337',
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
  ]
}

angular.module( 'bookerApp', [] )