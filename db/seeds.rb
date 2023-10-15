# frozen_string_literal: true

MyPokemon.find_or_create_by!(id: 1) do |my_pokemon|
  my_pokemon.name = 'ピカチュウ'
  my_pokemon.nickname = 'ピカちゃん'
  my_pokemon.level = 50
  my_pokemon.hp = 75.55
  my_pokemon.max_hp = 100.0
end

MyPokemon.find_or_create_by!(id: 2) do |my_pokemon|
  my_pokemon.name = 'ヒトカゲ'
  my_pokemon.nickname = 'ヒトちゃん'
  my_pokemon.level = 60
  my_pokemon.hp = 80.8
  my_pokemon.max_hp = 120.5
end

MyPokemon.find_or_create_by!(id: 3) do |my_pokemon|
  my_pokemon.name = 'ゼニガメ'
  my_pokemon.nickname = 'ゼニちゃん'
  my_pokemon.level = 70
  my_pokemon.hp = 90.9
  my_pokemon.max_hp = 150.0
end

MyPokemon.find_or_create_by!(id: 4) do |my_pokemon|
  my_pokemon.name = 'フシギダネ'
  my_pokemon.nickname = 'ダネちゃん'
  my_pokemon.level = 80
  my_pokemon.hp = 100.0
  my_pokemon.max_hp = 200.0
end
