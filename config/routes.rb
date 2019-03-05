Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resource :products
    get "products/index"
  end

  resource :products
  get "products/index"

  root 'products#index'
end
