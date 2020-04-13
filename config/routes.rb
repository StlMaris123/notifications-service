# frozen_string_literal: true

Rails.application.routes.draw do
  resources :forums do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
