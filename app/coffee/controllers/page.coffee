define ['jquery', 'angular'], ($, angular)->

  app = angular.module('app')

  app.controller('page', ['$scope', ($scope)->
    $scope.sub = 'wtf'
  ])
