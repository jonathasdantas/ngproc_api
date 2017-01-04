Rails.application.routes.draw do
  # Authetication Route - JWT Token
  post 'auth' => 'authentication#auth'

  # District Routes
  resources :districts, only: [:index, :show]

  # Judging Body Routes
  resources :judging_bodies, only: [:index, :show]

  # Process Class Routes
  resources :process_classes, only: [:index, :show]

  # Justice Process and Movements
  resources :justice_processes do
    resources :process_movements, only: [:index, :show]
  end
end
