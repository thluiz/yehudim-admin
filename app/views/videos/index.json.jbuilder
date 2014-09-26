json.array!(@videos) do |video|
  json.extract! video, :id, :episode_id, :identifier, :title, :description, :order
  json.url video_url(video, format: :json)
end
