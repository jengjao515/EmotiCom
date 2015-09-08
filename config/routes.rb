Rails.application.routes.draw do
  root 'home#index'
  #for FireBase Login
  get 'logout' => 'users#logout'

  resources :users
end
