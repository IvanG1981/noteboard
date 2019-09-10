Rails.application.routes.draw do
  devise_for :users
  #get 'profiles/new'
  #get 'profiles/create'
  #get 'profiles/edit'
  #get 'profiles/update'
  #get 'profiles/index'
  resources :profiles
  resources :notes
  get 'notes/seen/:id', to: 'notes#seen'
  patch 'notes/seen/:id', to: 'notes#seen', as: :note_seen
  #get 'notes/new'
  #get 'notes/create'
  #get 'notes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'notes#index'

end
