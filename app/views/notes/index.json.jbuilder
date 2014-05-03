json.array!(@notes) do |note|
  json.extract! note, :id, :title, :content, :tag_list
  json.url note_url(note, format: :json)
end
