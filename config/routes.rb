Rails.application.routes.draw do
  resources :musicians
  resources :bands
  get "up" => "rails/health#show", as: :rails_health_check

  root "bands#index"
end
