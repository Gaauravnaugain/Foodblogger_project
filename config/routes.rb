Rails.application.routes.draw do
  resources :posts
  devise_for :users
  #devise_for :users, :controllers => { :sessions => "sessions" }
  #devise_for :users, controllers: { sessions: 'sessions' }
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
