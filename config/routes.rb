Rails.application.routes.draw do
  get 'toppages/index'
  get 'toppages/about'
  root to: 'toppages#index'
end
