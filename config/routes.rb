Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'treehouses/', to: 'treehouses#index'
  get 'treehouses/new', to: 'treehouses#new', as: :new_treehouse
  post 'treehouses', to: 'treehouses#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
