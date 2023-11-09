Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  #Rutas users
  namespace :authentication, path: '', as: '' do
    resources :users, as: :users
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  #get '/users/new', to: 'users#new', as: :new_user
  #post '/users', to: 'users#create'
  #get '/users/:id/edit', to: 'users#edit', as: :edit_user

  #Rutas diseases
  get '/diseases', to: 'diseases#index'

  #Rutas  posts
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new', as: :new_post


  end
end
