json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :designation, :email
  json.url teacher_url(teacher, format: :json)
end
