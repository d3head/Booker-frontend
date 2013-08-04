'use strict'

window.booker = {
  api: {
    url: '//api.booker.am',
    stats: url + '/stats/',
    books: '/books/',
    authors: url + '/authors/',
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