Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/search', to: 'pages#search'
  resources :shows, only: [:index, :show] do
    member do
      post 'add_favourite'
    end
  end
end
