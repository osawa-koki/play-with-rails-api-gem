# frozen_string_literal: true

module Api
  module V1
    # MyPokemonsController
    class MyPokemonsController < ApplicationController
      def index
        render json: MyPokemon.all
      end
    end
  end
end
