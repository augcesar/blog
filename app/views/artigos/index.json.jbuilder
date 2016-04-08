json.array!(@artigos) do |artigo|
  json.extract! artigo, :id, :titulo, :descricao, :data, :publicar, :usuario_id
  json.url artigo_url(artigo, format: :json)
end
