# we start from here, everything is based on this

Rails.application.routes.draw do

              # controller file & method
  # root to: 'pages#home'
  get '/', to: 'pages#home'
  get '/about', to: 'pages#about'

  # get '/dishes/new', to: 'dishes#new'
  # get '/dishes/:id', to: 'dishes#show'
  # get '/dishes', to: 'dishes#index'
  # get '/dishes/:id/edit', to: 'dishes#edit'
  # put '/dishes/:id', to: 'dishes#update'
  # delete '/dishes/:id', to: 'dishes#destroy'

  resources :dishes
  
end
