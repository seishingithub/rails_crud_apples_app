Rails.application.routes.draw do
 root 'apples#index'
 get '/apples', to: 'apples#index'
  get '/apples/new', to: 'apples#new'
  post '/apples', to: 'apples#create'

  # resources :apples
end
