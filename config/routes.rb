Rails.application.routes.draw do

  devise_for :users
  root 'homepage#index'

  resources :categories

  resources :posts

  get '/about', to: 'homepage#about'
  get '/cookies', to: 'homepage#cookies'
  get '/my_posts', to: 'posts#user_posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
