json.array!(@peticiones) do |peticione|
  json.extract! peticione, :id, :id_cliente, :, :tipo, :, :descripcion_peticion, :, :coordenada_peticion, :, :date_peticion, :, :status_peticion, :, :id_usuario, :, :date_respuesta, :, :descripcion_respuesta, :, :status_respuesta, :
  json.url peticione_url(peticione, format: :json)
end
