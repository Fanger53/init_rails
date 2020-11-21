Rails.application.routes.draw do
  root 'costumers#index'
  resources :costumers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
