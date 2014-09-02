App.controller 'ModalController',
  [
    '$scope', (scope) ->
      scope.dismiss = ->
        scope.$dismiss('cancel')
  ]
