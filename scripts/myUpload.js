var app = angular.module('App', [ 'ngAnimate' ]);
app.directive("myUpload", function() {
  return {
    scope: {
      foldername: '@',
      files: '@'
    },
    controller: function($scope, $element, $attrs, $transclude){
      
    },
    
    template: '<span ng-bind="foldername"></span> <span ng-bind="files"></span>'
   };
});
