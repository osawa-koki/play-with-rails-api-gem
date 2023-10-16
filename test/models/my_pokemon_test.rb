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
require 'test_helper'

class MyPokemonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
