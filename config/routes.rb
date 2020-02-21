Rails.application.routes.draw do
  root to: 'pages#home'
  resources :shows, only: [:index, :show]
end
