Rails.application.routes.draw do
  devise_for :users
  get 'user/index'

  get 'user/edit'

  #get 'sessions/create'

 # get 'sessions/destroy'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  # get 'new_registration', to: 'home#index'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:index]

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
