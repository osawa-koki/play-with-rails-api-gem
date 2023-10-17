# frozen_string_literal: true

module Api
  module V1
    # MyPokemonsController
    class MyPokemonsController < ApplicationController
      before_action :set_my_pokemon, only: %i[show update destroy add_avatar]
      before_action :set_my_pokemons, only: %i[index]

      def index
        render json: @my_pokemons
      end

      def add_avatar
        @my_pokemon.avatar.attach(params[:avator])
        render json: { path: url_for(@my_pokemon.avatar) }
      end

      private

      def set_my_pokemon
        @my_pokemon = MyPokemon.includes(:avatar_attachment).find(params[:id])
      end

      def set_my_pokemons
        @my_pokemons = MyPokemon.includes(:avatar_attachment).all
      end
    end
  end
end
