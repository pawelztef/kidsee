Rails.application.routes.draw do
  namespace :admin do
    get 'settings/edit'
    get 'settings/update'
  end
end
