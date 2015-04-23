require.config({
  baseUrl: '/'

  shim:
    'angular':
      exports: 'angular'
    'angular-route':
      deps: ['angular']

  paths:
    'jquery':          'https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min'
    'angular':         'https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min'
    'angular-route':   'https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min'
    'mustache':        'js/components/mustache.js/mustache'
  waitSeconds: 200
})

require([
  'jquery',
  'js/app',
  'js/router'
], ($, app)->

  app.ini()

)
