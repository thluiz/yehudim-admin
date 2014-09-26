json.array!(@tvshows) do |tvshow|
  json.extract! tvshow, :id, :name, :identifier, :description
  json.url tvshow_url(tvshow, format: :json)
end
