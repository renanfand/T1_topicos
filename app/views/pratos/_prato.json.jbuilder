json.extract! prato, :id, :descricao, :preco, :tempoPreparo, :ingrediente, :cozinha, :created_at, :updated_at
json.url prato_url(prato, format: :json)
