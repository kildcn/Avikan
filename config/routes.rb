Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  get "new", to: "captures#new"
  post '/upload_image', to: 'captures#new'
  root to: "pages#home"

  resources :captures, only: [:index, :new, :create, :show] do
    member do
      get :first
      get :reward
    end
  end

  resources :pages, only: [:badges, :leaderboard, :map] do
    member do
      get :first
      get :reward
      get :badges, to: 'pages#user_badges', as: 'user_badges'
    end
  end

  get '/birds/index', to: 'birds#index'
  get '/birds/:id', to: 'birds#show'
  get '/pages/map', to: 'pages#map'
  get '/pages/:id/badges', to: 'pages#badges'
  get '/pages/leaderboard', to: 'pages#leaderboard'
  get 'spots', to: 'spots#index'

  resources :users, only: [:search] do
    resources :pages, only: [:stats]
  end

  resources :friends, only: [:create, :delete]

  resources :spots, only: [:create, :destroy] do
    resources :reviews, only: [:new]
  end
end
