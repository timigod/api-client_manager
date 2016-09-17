ClientManager::Engine.routes.draw do
  root to: 'users#index'
  get 'login', to: 'sessions#login'
  post 'login_attempt', to: 'sessions#login_attempt'
  get 'clients', to: 'clients#index'
  resources :users, only: [:index, :new, :create]
end