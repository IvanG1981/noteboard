Rails.application.routes.draw do
  resources :notes
  #get 'notes/new'
  #get 'notes/create'
  #get 'notes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'notes#index'

end
