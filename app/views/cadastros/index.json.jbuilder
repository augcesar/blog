json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id
  json.url cadastro_url(cadastro, format: :json)
end
