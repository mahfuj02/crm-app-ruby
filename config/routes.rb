Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Define your routes for the customers controller
  root 'customers#index'
  
  # Add this line to define standard RESTful routes for customers
  resources :customers, only: [:index]
  
  # Add the custom routes for missing_email and alphabetized
  get 'customers/alphabetized', to: 'customers#alphabetized'
  get 'customers/missing_email', to: 'customers#missing_email'
end