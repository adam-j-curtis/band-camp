Rails.application.routes.draw do
  # root 'devise/sessions#new' (login on splash page)
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [ :index, :show ]

    # namespace :api do
    #   namespace :v1 do
    #     resources :users, only: [:index, :show]
    #   end
    # end

end
