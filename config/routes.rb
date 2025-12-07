Rails.application.routes.draw do
  resources :houses
  root to: "pages#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
