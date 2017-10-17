Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :posts
  root 'books#index'
  resources :books do
    resources :notes, only: [:create, :destroy]
  end

resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/login" => "sessions#new", as: "login"
delete "/logout" => "sessions#destroy", as: "logout"

end
