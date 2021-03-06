# frozen_string_literal: true

Rails.application.routes.draw do
  root 'forums#index'
  resources :forums do
    resources :comments
  end
  resources :tags, only: [:index, :show]
  get '/tagged', to: "forums#tagged", as: :tagged

  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
