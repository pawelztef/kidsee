Rails.application.routes.draw do
  namespace :admin do
    resources :settings
  end
end
