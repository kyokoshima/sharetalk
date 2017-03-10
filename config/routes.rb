Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }
  root :to => "home#index"

  resources :profiles
  resources :timelines
  resources :profiles
  resources :groups
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
