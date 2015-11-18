json.array!(@tollywoods) do |tollywood|
  json.extract! tollywood, :id, :name, :age, :role, :star, :political
  json.url tollywood_url(tollywood, format: :json)
end
