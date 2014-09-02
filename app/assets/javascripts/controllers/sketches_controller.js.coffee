App.controller 'SketchesController',
  [
    '$scope', 'SketchFactory', '$modal', (scope, Sketch, modal) ->
      Sketch.all(scope)

      scope.new = ->
        mi = modal.open
          templateUrl: "new_sketch.html"
          size: 'lg'

      scope.create = ->
        console.log "creating new sketch"
        console.log scope.sketch
        console.log scope.description
        sketch =
          sketch: scope.sketch
          description: scope.description

        Sketch.create(scope, sketch)

      scope.remove = (index) ->
        Sketch.destroy(scope, index)
  ]
