Rails.application.routes.draw do

  devise_for :users
  root to: 'home#top'
  get 'home/about' => 'home#about', as: 'about'
  resources :books, only: [:new, :create, :index, :edit, :update, :show, :destroy] do
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update, :index]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
