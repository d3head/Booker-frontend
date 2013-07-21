'use strict'

describe 'Controller: CategoriescontrollerCtrl', () ->

  # load the controller's module
  beforeEach module 'bookerApp'

  CategoriescontrollerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CategoriescontrollerCtrl = $controller 'CategoriescontrollerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
