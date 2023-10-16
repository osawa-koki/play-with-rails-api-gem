# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :my_pokemons, only: %i[index create update destroy]

      resources :settings do
        collection do
          get :envs
        end
      end
    end
  end
end
