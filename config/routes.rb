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
  
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
end