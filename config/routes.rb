Rails.application.routes.draw do
  resources :shoes, only: [:index]
  
  root 'shoes#index'
end