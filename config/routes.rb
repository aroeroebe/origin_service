Rails.application.routes.draw do

  get 'seclikes/create'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create] do
  end 
  
  resources :posts, only: [:new, :create, :destroy, :edit, :update]
  resources :toppages, only: [:index, :about ]
  resources :likes, only: [:create, :destroy]
  resources :seclikes, only: [:create, :destroy]
  resources :vattles
  
  
  
  
  
  
end
