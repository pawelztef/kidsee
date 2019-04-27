Rails.application.routes.draw do
  devise_for :admin
  namespace :admin do
    root to: 'settings#index'
    resources :settings
  end
end
