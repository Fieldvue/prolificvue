Rails.application.routes.draw do
  resources :resources
  resources :resource_types
  resources :professional_levels
  resources :users
  root 'users#index'
end
