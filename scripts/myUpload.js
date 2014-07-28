var app = angular.module('App', [ ]);
app.directive("myUpload", function() {
  return {
    scope: {
      filename: '@'
    },
    controller: function($scope, $element, $attrs, $transclude){
    },
    
    template: '<ul> <li> <span ng-bind="filename"></span> </li> </ul>'
   };
});
