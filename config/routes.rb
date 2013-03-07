DestinationUnknown::Application.routes.draw do

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users, :itineraries, :destinations
  root :to => 'home#index'

end
