Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
  devise_for :users
  root to: "pages#home"
  resources :reviews, only: [:index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "cv", to: "pages#cv"
  # Defines the root path route ("/")
  # root "articles#index"
end
