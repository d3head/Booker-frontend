'use strict'

window.booker = {
  api: {
    url: '//localhost:1337',
    stats: '//localhost:1337/stats',
    books: '//localhost:1337/books',
    authors: '//localhost:1337/authors',
    categories: '//localhost:1337/categories'
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