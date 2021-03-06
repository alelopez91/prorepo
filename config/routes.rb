Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'welcome#index'

  resources :projects, except: [:index, :destroy, :edit, :update]
end
