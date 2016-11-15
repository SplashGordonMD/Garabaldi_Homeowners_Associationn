Rails.application.routes.draw do
  
  get '/listings' => 'listings#index'
  get '/listings/new' => 'listings#new'
  post '/listings' => 'listings#create'
  get '/listings/:id' => 'listings#show'
  get '/listings/:id/edit' => 'listingss#edit'
  patch '/listings/:id' => 'listings#update'
  delete '/listings/:id' => 'listings#destroy'
end
