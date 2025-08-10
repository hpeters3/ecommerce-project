Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/", to: "books#index"
  get "cart", to: "carts#show"
  get "checkout", to: "carts#checkout"
  get "purchase", to: "carts#purchase"

  resources :books
  resources :cart
  resources :cart_items
  get "up" => "rails/health#show", as: :rails_health_check
end
