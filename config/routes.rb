Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#index'
  get '/home/about', to: 'homes#about', as: 'about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books
end
