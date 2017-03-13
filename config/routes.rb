Rails.application.routes.draw do
  
  resources :turns do
    resources :turn_details
  end
  devise_for :users, controllers: { registrations: :registrations }

  resources :expenses do
  	resources :costs
  end

  resources :expenses do
  	resources :costs
  end

  devise_for :users, controllers: { registrations: :registrations }

  devise_scope :user do
    root :to => "devise/sessions#new"
end


  resources :profiles
  resources :timelines
  resources :profiles
  resources :groups
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
