Rails.application.routes.draw do
  resources :users, only: [:show, :index] do
    resource :father, only: [:show]
    resource :mother, only: [:show]
    resources :children, only: [:index]
  end
  root 'users#index'
end
