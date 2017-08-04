Rails.application.routes.draw do

  root 'sessions#new'

  get 'users/new'

  resources 'users'
  resources 'sessions'



end
