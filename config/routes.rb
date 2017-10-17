Rails.application.routes.draw do
  resources :posts
  root 'books#index'
  resources :books do
    resources :notes, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
