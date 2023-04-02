Rails.application.routes.draw do

  root 'homes#top'
  get 'home/about' => 'homes#about' ,as: 'about'

  devise_for :users

  resources :users, only: [:show, :edit, :update]
  resources :books, only: [:create, :show, :edit, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
