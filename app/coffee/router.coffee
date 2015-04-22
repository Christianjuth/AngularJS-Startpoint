define [
  'jquery',
  'angular',
  'ngRoute',

  #controlers
  'js/controllers/home',
  'js/controllers/page'

], ($, angular)->

  app = angular.module('app')

  app.config ($routeProvider, $locationProvider, $httpProvider)->

    #route home
    $routeProvider
    .when('/', {
      templateUrl: 'templates/home.html'
      controller: 'home'
    })
    .when('/page', {
      templateUrl: 'templates/page.html'
      controller: 'page'
    })
    .otherwise({
      redirectTo: '/'
    })
