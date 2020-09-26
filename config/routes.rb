Rails.application.routes.draw do
  root 'application#index'

  devise_for :staff, controllers: { sessions: 'staff/sessions' }
  devise_for :client, controllers: { sessions: 'client/sessions' }

  namespace :staff do
    root to: 'main#index'
  end

  namespace :client do
    root to: 'main#index'
  end
end
