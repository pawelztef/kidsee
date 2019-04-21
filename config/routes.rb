Rails.application.routes.draw do
  namespace :admin do
    # TODO lessen possible routes through 'only' or 'except'
    resources :settings
  end
end
