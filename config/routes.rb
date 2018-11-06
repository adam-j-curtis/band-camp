Rails.application.routes.draw do
  # get '/users/sign_in', to: 'devise/sessions#new'
  # root 'devise/sessions#new'

  root 'homes#index'
  get '/teachers/:id', to: 'teachers#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [ :index, :show ]

  resources :students, only: [ :index, :show ]

  resources :teachers, only: [ :index, :show ]


    # namespace :api do
    #   namespace :v1 do
    #     resources :users, only: [:index, :show]
    #   end
    # end

end
