Rails.application.routes.draw do

  # devise_for :caregivers
  devise_for :caregivers, controllers: {
    sessions: 'caregivers/sessions'
  }

  devise_scope :caregiver do
    authenticated  do
      root to: 'caregivers/caregivers#index', as: 'authenticated_caregiver_root'
    end
  end

  namespace :caregivers do
  end

  # devise_for :admins
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  devise_scope :admin do
    authenticated  do
      root to: 'admins/settings#index', as: 'authenticated_admin_root'
    end
  end

  namespace :admins do
    resources :settings
  end
end
