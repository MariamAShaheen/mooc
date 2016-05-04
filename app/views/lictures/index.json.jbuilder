json.array!(@lictures) do |licture|
  json.extract! licture, :id, :content, :attachment, :course_id
  json.url licture_url(licture, format: :json)
end
