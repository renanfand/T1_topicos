class Prato < ApplicationRecord
	validates :descricao, :terms_of_service, acceptance: { message: ': Campo obrigatório, favor passar alguma descrição para o prato.' }
end
