Rails.application.routes.draw do
  # root :to => 'skills#index'

  get '/' => 'home#index'

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  resources :users do
    resources :skills
  end

  resources :skills do
    resources :projects
  end

end
