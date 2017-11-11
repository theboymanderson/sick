Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :get_well_messages, only: :index

  resources :users, only: :create do
    collection do
      get :sign_up
    end
    member do
      get :confirm_email
    end
  end
end
