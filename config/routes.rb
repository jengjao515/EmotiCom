Rails.application.routes.draw do
  root 'home#index'
  #for FireBase Login
  post 'twitter' => 'users#twitter'

  resources :users
end
