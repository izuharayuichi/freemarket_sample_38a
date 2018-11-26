Rails.application.routes.draw do
  devise_for :users
  get "users/logout", to: "users#logout"
  resources :users, only: [:index, :show, :edit, :update, :new] do
    resources :card, only: [:index, :new, :create]
  end
  root 'charges#index'
  get 'charges' => 'charges#index'
  post 'charges/pay' => 'charges#pay'
  get 'charges/pay' => 'charges#pay'
  resources :products
  root "products#index"
  get "products/buy", to: "products#buy"

  get  "brands/index"  =>  "brands#index"
end
