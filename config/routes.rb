Rails.application.routes.draw do
  
  get '/listings' => 'listings#index'
  get '/listings/new' => 'listings#new'
  post '/listings' => 'listings#create'
  get '/listings/:id' => 'listings#show'
  get '/listings/:id/edit' => 'listings#edit'
  patch '/listings/:id' => 'listings#update'
  delete '/listings/:id' => 'listings#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'session#new'
  post '/login' => 'sessions#destroy'
end
