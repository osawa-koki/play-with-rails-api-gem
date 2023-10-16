# frozen_string_literal: true

module Api
  module V1
    # SettingsController
    class SettingsController < ApplicationController
      def envs
        render json: {
          ENV1: ENV['ENV1'],
          ENV2: ENV['ENV2'],
          ENV3: ENV['ENV3']
        }
      end

      def constants
        render json: {
          key1: Settings.group[:key1],
          key2: Settings.group[:key2],
          key3: Settings.group[:key3]
        }
      end
    end
  end
end
