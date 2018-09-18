class Prato < ApplicationRecord
	validates :descricao, presence: true 
	belongs_to :cozinha
	
	has_and_belongs_to_many :ingredientes	
end
