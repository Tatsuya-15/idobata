Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  root to: 'post_images#index'
  resources :post_images
  get 'homes/about'
end
