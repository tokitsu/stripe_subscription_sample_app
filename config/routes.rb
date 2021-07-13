Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts
  get "pricing", to: "static_pages#pricing"
  post "checkout/create", to: "checkout#create", as:"checkout_create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
