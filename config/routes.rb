# Edit config/routes.rb
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'customers#index'
  get 'customers/alphabetized'
  get 'customers/missing_email'
end