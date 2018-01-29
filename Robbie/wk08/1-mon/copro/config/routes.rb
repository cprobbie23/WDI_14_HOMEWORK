Rails.application.routes.draw do

  resources :likes
  resources :comments
  get '/', to: 'pages#home'
  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'

  resources :users
  resources :projects
  # , only:[:new, :create]
  resources :comments
end
