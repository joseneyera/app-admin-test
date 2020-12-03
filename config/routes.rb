Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #jag 
  root to: 'home#index'
  resources :categories
  resources :clients
  resources :suppliers
  resources :products
  #jag
end
