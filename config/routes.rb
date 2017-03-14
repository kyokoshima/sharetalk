Rails.application.routes.draw do

  
  resources :turns do
    resources :turn_details
  end
  
  resources :expenses do
  	resources :costs
  end

  devise_for :users, skip: [:sessions, :registrations] #deviseのデフォルトのpathを削除
  devise_scope :user do
    root :to => "devise/sessions#new"
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    get 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'sign_up' => 'devise/registrations#new', as: :new_user_registration
    post 'sign_up' => 'devise/registrations#create', as: :user_registration
  end

  resources :messages

  root :to => "home#index"

  resources :profiles
  resources :timelines
  resources :groups
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
