Rails.application.routes.draw do
  resources :items
  resources :characters
  resources :users
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  root 'users#index'

end
