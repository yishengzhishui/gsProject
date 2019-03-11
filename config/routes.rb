Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      confirmations: 'users/confirmations',
      passwords: 'users/passwords',
      registrations: 'users/registrations',
  }

  namespace :admin do
    resources :products
    get "products/index"
  end

  resources :products
  get "products/index"

  root 'products#index'
end
