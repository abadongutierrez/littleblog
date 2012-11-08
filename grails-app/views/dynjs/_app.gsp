'use strict';


// Declare app level module which depends on filters, and services
angular.module('myApp', ['myApp.filters', 'myApp.services', 'myApp.directives']).
  config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
    $routeProvider.
      when('${request.contextPath}/', {
        templateUrl: '${createLink(controller: 'partials', action: 'index')}',
        controller: IndexCtrl
      }).
      when('${request.contextPath}/addPost', {
        templateUrl: '${createLink(controller: 'partials', action: 'addPost')}',
        controller: AddPostCtrl
      }).
      when('${request.contextPath}/readPost/:id', {
        templateUrl: '${createLink(controller: 'partials', action: 'readPost')}',
        controller: ReadPostCtrl
      }).
      when('${request.contextPath}/editPost/:id', {
        templateUrl: '${createLink(controller: 'partials', action: 'editPost')}',
        controller: EditPostCtrl
      }).
      when('${request.contextPath}/deletePost/:id', {
        templateUrl: '${createLink(controller: 'partials', action: 'deletePost')}',
        controller: DeletePostCtrl
      }).
      otherwise({
        redirectTo: '${request.contextPath}/'
      });
    $locationProvider.html5Mode(true);
  }]);