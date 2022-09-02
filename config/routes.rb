# frozen_string_literal: true

Rails.application.routes.draw do
  resources :aurthors do
    resources :comments
  end
  resources :magazines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
