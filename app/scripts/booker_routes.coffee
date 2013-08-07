'use strict'

translations =
  en:
    books_by: "by"
    books_author: "author"

  ru:
    books_by: "от"
    books_author: "автор"

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
  ], [ "$translateProvider", ($translateProvider) ->
    $translateProvider.translations en,
      books_by: "by"
    
    $translateProvider.translations ru,
      books_by: "от"
      
    $translateProvider.preferredLanguage "ru"
  ]