var app = angular.module('App', [ 'ngAnimate' ]);
app.directive("myUpload", function() {
  return {
    scope: {
      foldername: '@',
      files: '@'
    },
    templateUrl: '/preview.erb'
   };
});
