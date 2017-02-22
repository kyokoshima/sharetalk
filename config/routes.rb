Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create'
    get 'logout' => 'devise/sessions#destroy'
    get ''
  end
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
