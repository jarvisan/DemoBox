var app = angular.module('App', [ 'ngAnimate' ]);
app.directive("myUpload", function() {
  return {
    scope: {
      filename: '@',
      files: '@'
    },
    templateUrl: '/preview.erb'
   };
});
