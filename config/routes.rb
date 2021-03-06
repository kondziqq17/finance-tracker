Rails.application.routes.draw do

  get 'friendships/destroy'

  get 'friendships_controller/destroy'

  get 'users/index'

  devise_for :users, :controllers => { :registrations => "user/registrations"}
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :friendships

  root 'welcome#index'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: "users#my_friends"
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
