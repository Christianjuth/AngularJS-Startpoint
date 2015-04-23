define ['jquery', 'angular'], ($, ng)->

  app = ng.module('app')

  app.controller('page', ['$scope', ($scope)->
    $scope.sub = 'wtf'
  ])
