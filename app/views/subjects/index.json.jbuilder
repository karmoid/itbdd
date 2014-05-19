json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :note
  json.url subject_url(subject, format: :json)
end
