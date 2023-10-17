# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  namespace :api do
    namespace :v1 do
      resources :my_pokemons, only: %i[index show create update destroy] do
        member do
          post :add_avatar
        end
      end

      resources :settings do
        collection do
          get :envs
          get :constants
        end
      end

      resources :mails, only: %i[create]
    end
  end
end
