Rails.application.routes.draw do
  resources :stocks
  devise_for :models
  #get 'homepage/index'
  root 'homepage#index'
  get 'home/index'
  get 'homepage/about'
  post '/' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
