Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resource :products
  end

  resource :products

  root 'products#index'
end
