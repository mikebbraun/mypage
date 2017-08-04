Rails.application.routes.draw do

  resources :posts
  root 'sessions#new'

  get 'users/new'
  get 'posts/index'

  resources 'users'
  resources 'sessions'
  resources 'posts'


end
