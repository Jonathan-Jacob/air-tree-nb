Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :treehouses do
    resources :bookings, only: [:new, :create, :update]
  end
  resources :bookings, only: [:index, :show]

  get "/dashboard", to: 'pages#dashboard', as: :dashboard
  get "/mytreehouses", to: 'treehouses#my_treehouses'
  get "/mytreehouses/:id", to: 'treehouses#my_treehouses_show', as: :mytreehouse
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
