Rails.application.routes.draw do

  get 'favorites/create'
  root 'home#top'
  get 'home/about'

  devise_for :users
  resources :users, :only => [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end


end