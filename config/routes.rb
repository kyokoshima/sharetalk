Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: :registrations }

  devise_scope :user do
    root :to => "devise/sessions#new"
end
  root :to => "home#index"

  resources :profiles
  resources :timelines
  resources :groups
  resources :events

  resources :expenses do
  	resources :costs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :message_groups do
    resources :messages
  end
  
end
