Rails.application.routes.draw do

  root to: "home#index"
  
  # devise_for :users
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  get 'user/index'
  get 'user/edit'

  get 'sessions/destroy'

  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
