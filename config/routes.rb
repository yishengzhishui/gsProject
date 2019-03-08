Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      confirmation: 'users/confirmation',
      password: 'users/password',
      registration: 'users/registration',
      unlocks: 'users/unlocks',
      omniauth_callbacks: 'users/omniauth_callbacks'
  }

  namespace :admin do
    resources :products
    get "products/index"
  end

  resources :products
  get "products/index"

  root 'products#index'
end
