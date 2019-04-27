Rails.application.routes.draw do
  devise_for :admins
  namespace :admins do
    root to: 'settings#index'
    resources :settings
  end
end
