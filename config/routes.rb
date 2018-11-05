Rails.application.routes.draw do
  # get '/users/sign_in', to: 'devise/sessions#new'
  # root 'devise/sessions#new'

  root 'homes#index'
  get 'api/v1/users/:user-id', to: 'api/v1/users#show'

  devise_for :users
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :users, only: [ :index, :show ]

<<<<<<< HEAD
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end
=======

    # namespace :api do
    #   namespace :v1 do
    #     resources :users, only: [:index, :show]
    #   end
    # end
>>>>>>> master

end
