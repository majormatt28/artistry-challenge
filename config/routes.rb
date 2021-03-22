Rails.application.routes.draw do
  resources :artists
  resources :instruments

  #get '/instruments', to: 'instruments#index', as: 'instruments'
  #get '/dogs', to: 'dogs#index', as: 'dogs'
  #get '/instruments', to: 'instruments#show'
end
