Rails.application.routes.draw do
  resources :resource_types
  resources :professional_levels
  resources :users
  root 'users#index'
end
