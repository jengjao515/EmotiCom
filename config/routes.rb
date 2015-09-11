Rails.application.routes.draw do
  root 'home#index'
  get 'logout' => 'users#logout'
  resources :users 
  resources :posts
end
