Rails.application.routes.draw do
  devise_for :users
  root 'articles#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
  namespace :admin do
    resources :users, only: [:index]
  end
  resources :users, only: [:show]
end
