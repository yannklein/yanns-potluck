Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :potlucks, only: [:index, :show] do
    resources :stuffs, only: [:create]
  end
end
