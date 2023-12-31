# frozen_string_literal: true

# == Schema Information
#
# Table name: my_pokemons
#
#  id         :integer          not null, primary key
#  hp         :float
#  level      :integer
#  max_hp     :float
#  name       :string
#  nickname   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# MyPokemon
class MyPokemon < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :avatar

  validates :name, presence: true
  validates :nickname, presence: true
  validates :level, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
  validates :hp, presence: true
  validates :max_hp, presence: true

  attribute :avatar_path, :string, default: nil

  def avatar_path
    return nil unless avatar.attached?

    url_for(avatar)
  end
end
