class Ingrediente < ApplicationRecord
	validates :descricao, presence: true
end
