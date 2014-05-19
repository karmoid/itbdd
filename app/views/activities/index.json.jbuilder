json.array!(@activities) do |activity|
  json.extract! activity, :id, :note, :start_at, :time_elapsed, :occurrence_id
  json.url activity_url(activity, format: :json)
end
