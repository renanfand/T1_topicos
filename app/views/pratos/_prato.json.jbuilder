json.extract! prato, :id, :descricao, :preco, :tempoPreparo, :created_at, :updated_at
json.url prato_url(prato, format: :json)
