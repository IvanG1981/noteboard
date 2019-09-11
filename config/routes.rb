Rails.application.routes.draw do
  devise_for :users

  resources :profiles
  resources :notes
  get 'notes/seen/:id', to: 'notes#seen'
  patch 'notes/seen/:id', to: 'notes#seen', as: :note_seen

  root 'notes#index'

end
