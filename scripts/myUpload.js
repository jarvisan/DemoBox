var app = angular.module('App', ['ngAnimate']);
app.directive("myUpload", function() {
  return {
    scope: {
      name: '@'
    },
    controller: function($scope, $element, $attrs, $transclude){
    },
    
    template: '<ul> <li> <span ng-bind="name"></span> </li> </ul>'
   };
});
