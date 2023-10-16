# frozen_string_literal: true

# MyPokemon
class MyPokemon < ApplicationRecord
  validates :name, presence: true
  validates :nickname, presence: true
  validates :level, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
  validates :hp, presence: true
  validates :max_hp, presence: true
end
