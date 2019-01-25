Rails.application.routes.draw do
  resources :items
  resources :characters
  resources :users
  root 'users#index'

end
