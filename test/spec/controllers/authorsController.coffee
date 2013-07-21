'use strict'

describe 'Controller: AuthorscontrollerCtrl', () ->

  # load the controller's module
  beforeEach module 'BookerApp'

  AuthorscontrollerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AuthorscontrollerCtrl = $controller 'AuthorscontrollerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
