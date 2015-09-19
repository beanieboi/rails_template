Rails.application.routes.draw do
  scope module: 'application' do
    resource :dashboard, only: [:show]
  end

  resources :sessions, only: [:new, :create]

  root 'website/welcome#index'
end
