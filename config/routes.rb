Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :treehouses, only: [:index, :show]
  get "treehouses/:id", to: "treehouses#show"

end
