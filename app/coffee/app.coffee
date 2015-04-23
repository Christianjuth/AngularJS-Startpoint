define [
  'jquery',
  'angular',
  'angular-route'
], ($, ng)->

  #app module
  app = ng.module('app', [
    'ngRoute'
  ])

  #initilize app function
  app.ini = ()->
    ng.bootstrap(document, ['app'])

  return app
