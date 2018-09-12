Rails.application.routes.draw do
  resources :likes
  resources :hotels
  resources :users
  post "/login", to: 'users#login'
  post "/remove", to: 'likes#destroy'
  get '/users/:id/liked_hotels', to: 'users#wishListed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
