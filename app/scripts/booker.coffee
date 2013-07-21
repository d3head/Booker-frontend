'use strict'

window.booker = {
  api: {
    url: '//localhost:1337',
    stats: this.url + '/stats',
    books: this.url + '/books',
    authors: this.url + '/authors',
    categories: this.url + '/categories'
  }
}

angular.module( 'bookerApp', [] )