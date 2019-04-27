Rails.application.routes.draw do
  devise_for :admins
  namespace :admin do
    root to: 'settings#index'
    resources :settings
  end
end
