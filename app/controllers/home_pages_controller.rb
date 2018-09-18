class HomePagesController < ApplicationController
  def index
  	@pratos = Prato.all
  end
end
