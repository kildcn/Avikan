Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  get "new", to: "captures#new"
  post '/upload_image', to: 'captures#new'
  get "/error", to: 'pages#error'
  root to: "pages#home"

  resources :captures, only: [:index, :new, :create, :show] do
    member do
      get :first
      get :reward
    end
  end

  resources :pages, only: [:leaderboard, :map]

  get '/birds/index', to: 'birds#index'
  get '/birds/:id', to: 'birds#show'
  get '/pages/map', to: 'pages#map'

  get '/badges/:id', to: 'pages#badges', as: 'user_badges'

  get '/badges', to: 'pages#badges', as: 'badges'

  get '/pages/leaderboard', to: 'pages#leaderboard'

  resources :users, only: [:search] do
    resources :pages, only: [:stats]
  end

  resources :friends, only: [:create, :delete]

  resources :spots, only: [:create, :destroy, :index] do
    resources :reviews, only: [:new]
  end
end
