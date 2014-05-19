json.array!(@subject_sets) do |subject_set|
  json.extract! subject_set, :id, :name, :note
  json.url subject_set_url(subject_set, format: :json)
end
