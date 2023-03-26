Rails.application.routes.draw do
  devise_for :users
  get 'diaries/index'
  root to: "diaries#index"
end
