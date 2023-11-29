Rails.application.routes.draw do
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "new", to: "captures#new"

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "pages#home"

  
  resources :captures, only:[:show, :new, :create, :first, :second, :success]
  

  resources :pages, only:[:badges, :leaderboard, :map]

  resources :users, only:[:search] do
    resources :pages, only:[:stats]
  end

  resources :friends, only: [:create, :delete]

  resources :spots, only: [:create, :destroy] do
    resources :reviews, only: [:new]
  end

end
