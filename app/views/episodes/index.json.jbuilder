json.array!(@episodes) do |episode|
  json.extract! episode, :id, :title, :identifier, :description, :tvshow_id, :publication, :order
  json.url episode_url(episode, format: :json)
end
