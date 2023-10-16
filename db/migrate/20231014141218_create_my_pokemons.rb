# frozen_string_literal: true

# CreateMyPokemons
class CreateMyPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :my_pokemons do |t|
      t.string :name
      t.string :nickname
      t.integer :level
      t.float :hp
      t.float :max_hp

      t.timestamps
    end
  end
end
