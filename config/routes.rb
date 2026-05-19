Rails.application.routes.draw do
  resources :bands
  get "up" => "rails/health#show", as: :rails_health_check

  root "bands#index"
end
