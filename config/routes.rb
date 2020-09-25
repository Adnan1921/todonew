Rails.application.routes.draw do
  resources :radi_ses
  resources :uradjenos
  resources :todo_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :todo_lists
  root "todo_lists#index"
  end

