Rails.application.routes.draw do
  root 'application#index'

  devise_for :staff, controllers: { sessions: 'staff/sessions' }

  namespace :staff do
    root to: 'main#index'
  end
end
