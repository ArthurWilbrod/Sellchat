Rails.application.routes.draw do

  
  # get 'cart/show'
  # get 'order/new'
  # get 'cat/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "cat#index"
  devise_for :users
  resources :cat
  resources :order
  resources :cart, only: [:show, :destroy]

end