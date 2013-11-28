'use strict'

angular.module( 'bookerApp' )
  .directive "selectivize", ->
    restrict: "A"
    link: (scope, element, attrs) ->
      element.selectize
        delimiter: ","
        persist: false
        create: (input) ->
          value: input
          text: input
          
  .controller 'BooksAddCtrl', ( $scope, $http, $routeParams, Restangular, $upload ) ->
    booksAdd = Restangular.all(booker.api.url + booker.api.books)
    
    formAlert = (id, err) ->
      if id == 'btnAlert'
        $scope.btnAlert = err
      if id == 'bookAlert'
        $scope.bookAlert = err
    
    $('#isbn').tipsy
      gravity: 'w'
    
    $scope.addBook = ->
      
      if not $scope.originaltitle or not $scope.title or not $scope.author or not $scope.isbn or not $scope.description
        formAlert 'btnAlert', 'Заполните все поля'
      else
        
        newBook =
          originaltitle: $scope.originaltitle,
          title: $scope.title,
          description: $scope.description
          author: $scope.author
          isbn: $scope.isbn
          tags: $("#input-tags").val().split(",")
          links: $scope.links
        
        booksAdd.post(newBook).then ->
          $("#addForm").hide()
          $scope.formCallback = "Книга добавлена! Она станет доступна после того, как пройдет проверку."
        , ->
          $("#addForm").hide()
          $scope.formCallback = "Произошла какая-то ошибка!"
        
    $scope.onFileSelect = ($files) ->
      i = 0
    
      while i < $files.length
        $file = $files[i]
        format = $file.name.split(".").pop()
        
        if not $scope.originaltitle or not $scope.title or not $scope.author or not $scope.isbn or not $scope.description
          formAlert 'bookAlert', 'Заполните все поля'
        else
        if format is 'epub' or format is 'fb2' or format is 'pdf'
          $scope.upload = $upload.upload(
            url: booker.api.url + booker.api.books + "upload"
            data:
              title: $scope.originaltitle
      
            file: $file
          ).progress((evt) ->
            $("#uploadForm").hide()
            $("#progress").show()
            $scope.uploadProgress = parseInt(100.0 * evt.loaded / evt.total)
          ).success((data, status, headers, config) ->
            if $scope.links
              $scope.links = $scope.links.concat(data)
            else
              $scope.links = [ data ]
          )
        else
          formAlert 'bookAlert', 'Это не книга'
        i++