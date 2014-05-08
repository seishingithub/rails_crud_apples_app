Rails.application.routes.draw do
  root 'apples#index'
  get '/apples', to: 'apples#index'
  get '/apples/new', to: 'apples#new'
  post '/apples', to: 'apples#create'
  get '/apples/:id', to: 'apples#show'
  get '/apples/:id/edit', to: 'apples#edit'
  put '/apples/:id', to: 'apples#update'
  delete '/apples/:id', to: 'apples#destroy'

  # resources :apples
end
