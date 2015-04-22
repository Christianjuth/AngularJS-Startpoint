define [
  'jquery',
  'angular',
  'ngRoute'
], ($, angular)->

  #app module
  app = angular.module('app', [
    'ngRoute'
  ])

  #initilize app function
  app.ini = ()->
    angular.bootstrap(document, ['app'])

  return app
