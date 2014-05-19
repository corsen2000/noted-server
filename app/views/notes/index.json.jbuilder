json.array!(@notes) do |note|
  json.extract! note, :id, :title, :content, :tag_list, :updated_at
  json.url note_url(note, format: :json)
end
