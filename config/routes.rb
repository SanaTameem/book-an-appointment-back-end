Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  post 'sign_up', to: 'api/v1/users#sign_up'
  post 'login', to: 'api/v1/users#login'

  namespace :api do
    namespace :v1 do
      resources :cars, only: [:index, :show, :create, :destroy]
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
