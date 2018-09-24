Rails.application.routes.draw do
  root 'home#index'
  get '/videos', to: 'videos#index'
  get '/video/:id', to: 'videos#show', as: 'video'

  get '/artists', to: 'artists#index'
  get '/artists/:id/:track', to:'artists#show', as: 'artist'
end
