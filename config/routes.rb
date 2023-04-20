Rails.application.routes.draw do
  devise_for :users
  get 'diaries/index'
  root to: "diaries#index"
  resources :profiles, only: [:index, :show, :new, :create]
end
