Rails.application.routes.draw do

  
  resources :turns do
    resources :turn_details
  end
  # devise_for :users, controllers: { registrations: :registrations }

  resources :expenses do
  	resources :costs
  end



  devise_scope :user do
    # root :to => "devise/sessions#new"
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'signup' => 'devise_invitable/registrations#new', as: :new_user_registration
    post 'signup' => 'devise_invitable/registrations#create', as: :user_registration
    get 'signup/cancel' => 'devise_invitable/registrations#cancel', as: :cancel_user_registration
    get 'user' => 'devise_invitable/registrations#edit', as: :edit_user_registration
    patch 'user' => 'devise_invitable/registrations#update', as: nil
    put 'user' => 'devise_invitable/registrations#update', as: :update_user_registration
    delete 'user' => 'devise_invitable/registrations#destroy', as: :destroy_user_registration
    get 'password' => 'devise/passwords#new', as: :new_user_password
    post 'password' => 'devise/passwords#create', as: :user_password
    get 'password/edit' => 'devise/passwords#edit', as: :edit_user_password
    patch 'password' => 'devise/passwords#update'
    put 'password' => 'devise/passwords#update', as: :update_user_password
end
  resources :users
  resources :messages

  root :to => "home#index"

  resources :profiles
  resources :timelines
  resources :groups
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
