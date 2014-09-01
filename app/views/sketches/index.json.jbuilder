json.array!(@sketches) do |sketch|
  json.extract! sketch, :id, :sketch, :description
  json.url sketch_url(sketch, format: :json)
end
