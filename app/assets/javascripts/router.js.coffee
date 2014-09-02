window.App = angular.module('App', ['ui.router', 'templates', 'ui.bootstrap', 'ng-rails-csrf']);

App.config([
  '$stateProvider', '$urlRouterProvider', (stateProvider, urlRouterProvider) ->

    urlRouterProvider.when('', '/')

    stateProvider.state 'home',
      url: '/'
      templateUrl: 'home.html'

    .state 'login',
      url: '/login'
      templateUrl: 'login.html'

    .state 'register',
      url: '/register'
      templateUrl: 'register.html'
])
