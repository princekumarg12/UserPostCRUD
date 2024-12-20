Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :posts
  end
  resources :posts do
    resources :comments
  end
end
