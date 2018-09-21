class Prato < ApplicationRecord
	validates :descricao, presence: true 
	belongs_to :cozinha
	
	has_and_belongs_to_many :ingredientes	


	def self.search(query)
		where("descricao LIKE :q", :q => "%#{query}%") 
	end

end
