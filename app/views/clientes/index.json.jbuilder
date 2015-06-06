json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :id_movil, :password, :name, :apellidos, :email
  json.url cliente_url(cliente, format: :json)
end
