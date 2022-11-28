Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :potlucks, only: [:index, :show, :create, :destroy] do
    resources :stuffs, only: [:create]
  end
  resources :stuffs, only: [:update, :destroy]
end
