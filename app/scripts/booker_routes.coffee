'use strict'

angular.module( 'bookerApp', [] )
  .config [ '$routeProvider', ( $routeProvider ) ->

    $routeProvider
      .when( '/', templateUrl: 'views/main.html', controller: 'BookerCtrl')
      .when( '/books', templateUrl: 'views/books.html', controller: 'BooksCtrl')
      # .when( '/books/:id', templateUrl: 'views/books.html', controller: 'BooksCtrl')
      .when( '/authors', templateUrl: 'views/authors.html', controller: 'AuthorsCtrl')
      # .when( '/authors/:name', templateUrl: 'views/authors.html', controller: 'AuthorsCtrl')
      .when( '/categories', templateUrl: 'views/categories.html', controller: 'CategoriesCtrl')
      # .when( '/categories/:name', templateUrl: 'views/categories.html', controller: 'CategoriesCtrl')
      .otherwise( redirectTo: '/' )
  ]