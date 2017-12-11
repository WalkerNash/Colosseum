Rails.application.routes.draw do


  # makes devise look in the registrations controller for sign_up and account_update_params
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'proposals#index'

  # ':user_name' is a dynamic parameter, meaning we can pass in diffferent user_names's
  get 'users/:user_name', to: 'profiles#show', as: :profile
  get 'users/:user_name/edit', to: 'profiles#edit', as: :edit_profile
  patch 'users/:user_name', to: 'profiles#update', as: :update_profile


  resources :proposals do
    resources :submissions do
      resources :comments
    end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
