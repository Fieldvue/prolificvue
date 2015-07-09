Rails.application.routes.draw do
  # get => 'pages/home'
  get 'about'   => 'pages/about'
  get 'contact' => 'pages/contact'
  get 'terms'   => 'pages/terms'
  get 'privacy' => 'pages/privacy'
  get 'faqs'    => 'pages/faqs'
  get 'help'    => 'pages/help'

  resources :resources
  resources :resource_types
  resources :professional_levels
  resources :users
  root 'pages#home'
end
