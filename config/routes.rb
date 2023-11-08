Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  #Rutas users
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: :new_user
  post '/users', to: 'users#create'

  #Rutas diseases
  get '/diseases', to: 'diseases#index'

  #Rutas  posts
  get '/posts/new', to: 'posts#new', as: :new_post
end
