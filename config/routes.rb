Rails.application.routes.draw do
  resources :wods
  resources :movements
  resources :users
  resources :affiliates

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
