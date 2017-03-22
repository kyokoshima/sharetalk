Rails.application.routes.draw do



  resources :expenses do
  	resources :costs
  end


  devise_for :users, controllers: { registrations: :registrations }
  root :to => "home#index"


  resources :timelines

  root :to => "timelines#index"
  
  resources :turns do
    resources :turn_details
  end
  resources :message_groups do
    resources :messages
  end


  resources :timelines do
    member do
      get :liking_users
    end
    resources :replies
  end
  resources :profiles
  resources :expenses do
  	resources :costs
  end

  devise_for :users, skip: [:sessions, :registrations] #deviseのデフォルトのpathを削除
  devise_scope :user do
    root :to => "devise/sessions#new"
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'sign_up' => 'devise/registrations#new', as: :new_user_registration
    post 'sign_up' => 'devise/registrations#create', as: :user_registration
  end

  resources :messages

  resources :profiles
  resources :groups
  resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# likes関連
  post '/like/:timeline_id' => 'likes#like', as: 'like'
  delete '/unlike/:timeline_id' => 'likes#unlike', as: 'unlike'

end
