class Cozinha < ApplicationRecord
	validates :nome, presence: true
	validates :endereco, presence: true
	validates :telefone, presence: true
end
