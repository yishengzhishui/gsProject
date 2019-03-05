Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
    get "products/index"
  end

  resources :products
  get "products/index"

  root 'products#index'
end
