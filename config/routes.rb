Rails.application.routes.draw do
  get 'home_pages/index'
  resources :ingredientes
  resources :pratos
  resources :cozinhas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root :to => "pratos#index"
  root :to => "home_pages#index"
end
