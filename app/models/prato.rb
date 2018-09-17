class Prato < ApplicationRecord
	validates :descricao, presence: true 
	belongs_to :ingrediente	
	belongs_to :cozinha	
end
