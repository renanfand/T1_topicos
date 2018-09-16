class Cozinha < ApplicationRecord
	validates :nome, :terms_of_service, acceptance: { message: ': Campo obrigatório, favor passar algum nome para o restaurante.' }
	validates :endereco, :terms_of_service, acceptance: { message: ': Campo obrigatório, favor passar algum endereço para o restaurante.' }
	validates :telefone, :terms_of_service, acceptance: { message: ': Campo obrigatório, favor passar algum telefone para o restaurante.' }
end
