json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :email, :cpf, :senha, :idfacebook
  json.url usuario_url(usuario, format: :json)
end
