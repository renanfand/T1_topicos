class HomePagesController < ApplicationController
  def index
  	# @pratos = Prato.all
  	@pratos = Prato.order('descricao DESC')
  end
end
