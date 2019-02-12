Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :affiliates
    end
  end

  root to: "spa#index"
  resources :users do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
