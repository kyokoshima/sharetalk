Rails.application.routes.draw do
  resources :expenses do
  	resources :costs
  end
  resources :profiles
  resources :groups
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
