Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }

  root :to => "home#index"

  resources :profiles
  resources :timelines
  resources :profiles
  resources :groups
  resources :events
  resources :message_groups do
    resources :messages
  end
  
end
