json.array!(@creators) do |creator|
  json.extract! creator, :id
  json.url creator_url(creator, format: :json)
end
