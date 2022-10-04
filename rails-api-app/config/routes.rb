# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    resources :restaurants do
      resources :foods, only: %i[index]
    end
    resources :line_foods, only: %i[index create]
    put 'line_foods/replace', to: 'line_foods#replace'
    resources :orders, only: %i[create]

    mount_devise_token_auth_for 'User', at: 'auth'
  end

  mount GrapeSwaggerRails::Engine => '/swagger'
end
