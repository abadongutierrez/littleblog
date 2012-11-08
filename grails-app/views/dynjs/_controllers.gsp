'use strict';

/* Controllers */

function AppCtrl($scope, $http) {
    $http({method: 'GET', url: '${request.contextPath}/api/name'}).
        success(function(data, status, headers, config) {
            $scope.name = data.name;
        }).
        error(function(data, status, headers, config) {
            $scope.name = 'Error!'
        });
}

function IndexCtrl($scope, $http) {
    $http.get('${request.contextPath}/api/posts').
            success(function (data, status, headers, config) {
                console.log(data.posts);
                $scope.posts = data.posts;
            });
}

function AddPostCtrl($scope, $http, $location) {
    $scope.form = {};
    $scope.submitPost = function () {
        $http.post('${request.contextPath}/api/post', $scope.form).
                success(function (data) {
                    $location.path('/');
                });
    };
}

function ReadPostCtrl($scope, $http, $routeParams) {
    $http.get('${request.contextPath}/api/post/' + $routeParams.id).
            success(function (data) {
                $scope.post = data.post;
            });
}

function EditPostCtrl($scope, $http, $location, $routeParams) {
    $scope.form = {};
    $http.get('${request.contextPath}/api/post/' + $routeParams.id).
            success(function (data) {
                $scope.form = data.post;
            });

    $scope.editPost = function () {
        $http.put('${request.contextPath}/api/post/' + $routeParams.id, $scope.form).
                success(function (data) {
                    $location.url('/readPost/' + $routeParams.id);
                });
    };
}

function DeletePostCtrl($scope, $http, $location, $routeParams) {
    $http.get('${request.contextPath}/api/post/' + $routeParams.id).
            success(function (data) {
                $scope.post = data.post;
            });

    $scope.deletePost = function () {
        $http.delete('${request.contextPath}/api/post/' + $routeParams.id).
                success(function (data) {
                    $location.url('/');
                });
    };

    $scope.home = function () {
        $location.url('${request.contextPath}/');
    };
}
