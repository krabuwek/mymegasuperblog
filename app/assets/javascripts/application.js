// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
//= require angular
//= require leaflet

var app = angular.module('dsd',[]);


/*
app.factory('Blog', function($resource) {
	return $resource('/posts/');
});
*/


app.controller('MainController', function($scope, $http) {
	$scope.test = 'tesssst';
	$scope.loaded = false;
	$scope.load = function() {
		console.log("ololol");
		$http.get('http://localhost:3000/posts/').
			success(function(data, status, headers, config) {
                $scope.question=data.question;
                $scope.loaded=true;
                console.log("код ответа: " +status);
                console.log("объем данных: " + headers("content-length"));
            })
						.error(function(data, status, headers, config) {
                console.log("код ответа: " +status);
            })

	};
	$scope.load();
	});


