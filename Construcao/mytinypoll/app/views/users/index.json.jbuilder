json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :cpf, :password, :idfacebook
  json.url user_url(user, format: :json)
end
