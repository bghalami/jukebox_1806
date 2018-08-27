Rails.application.routes.draw do
  ### For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # when someone gets /songs, go to songs controller, and get method index,
  # MUST seperate with hash
  # get '/songs', to: 'songs#index'
  # to get all routes
  # resources :songs, only: [:index, :show, :destroy]
  # to keep routes away
  # resources :songs, except: [:destroy, :edit, :udpate]
  root 'songs#index'
  resources :songs, only: [:index, :show]
  resources :artists, only: [:new, :create, :index, :show]
  resources :playlists, only: [:new, :create, :index]
end
