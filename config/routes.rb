Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :user_events, only: [:create, :destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
