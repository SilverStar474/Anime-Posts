Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :bads do
    resources :comments
  end
  get "/my_bad", to: "bads#my_bad", as: :my_bad
  # get "/bad/new", to: "bad#new", as: :new_bad
  # post "/bad", to: "bad#create", as: :bads
  # get "bad/:id/edit", to: "bad#edit", as: :edit_bad
  # patch "bad/:id", to: "bad#update"
  # delete "bad/:id", to: "bad#destroy"
  # get "bad/:id", to: "bad#show", as: :bad
  root "bads#index"
end
