App.factory 'SketchFactory',
  [
    '$http', (http) ->
      baseUrl = '/sketches'
      data = {}

      data.all = (scope) ->
        http.get("#{baseUrl}.json")
          .success (data) ->
            console.log data
            scope.sketches = data
          .error ->
            console.log "Error in loading data"

      data.create = (scope, sketch) ->
        http.post("#{baseUrl}.json", sketch)
          .success (data) ->
            console.log data
            scope.sketches.push(data)
            scope.$dismiss('close')
          .error ->
            console.log "Error in creating sketch"

      data.destroy = (scope, index) ->
        id = scope.sketches[index].id

        http.delete("#{baseUrl}/#{id}.json")
          .success (data) ->
            scope.sketches.splice(index, 1)
          .error ->
            console.log "Error"

      data
  ]
