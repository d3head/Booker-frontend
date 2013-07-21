'use strict'

describe 'Controller: BookscontrollerCtrl', () ->

  # load the controller's module
  beforeEach module 'BookerApp'

  BookscontrollerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BookscontrollerCtrl = $controller 'BookscontrollerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
