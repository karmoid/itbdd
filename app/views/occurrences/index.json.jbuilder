json.array!(@occurrences) do |occurrence|
  json.extract! occurrence, :id, :title, :note, :raised_at, :active, :subject_id
  json.url occurrence_url(occurrence, format: :json)
end
