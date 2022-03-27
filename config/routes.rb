Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#index'
  get '/about', to: 'about#index', as: 'about'
  get '/users/:id', to: 'users#show', as: 'user'
end
