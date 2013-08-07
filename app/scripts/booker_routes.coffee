'use strict'

angular.module( 'bookerApp', ['pascalprecht.translate'] )
  .config [ '$routeProvider', ( $routeProvider ) ->

    $routeProvider
      .when( '/', templateUrl: 'views/books.html' )
      .when( '/books', templateUrl: 'views/books.html', controller: 'BooksCtrl' )
      .when( '/books/:id', templateUrl: 'views/book.html', controller: 'BookCtrl' )
      .when( '/authors', templateUrl: 'views/authors.html', controller: 'AuthorsCtrl' )
      .when( '/authors/:name', templateUrl: 'views/author.html', controller: 'AuthorCtrl' )
      .when( '/categories', templateUrl: 'views/books.html', controller: 'BooksCtrl' )
      .when( '/categories/:name', templateUrl: 'views/category.html', controller: 'CategoryCtrl' )
      .otherwise( redirectTo: '/' )
  ]