require_relative './import/CreateHero'
require_relative './import/GameTurnBased'

def start_game
  hero1 = create_hero('Jin Sakai', 100, 50, true)
  hero1.to_s
  puts "\n"
  hero2 = create_hero('Khotun Khan', 500, 50)
  hero2.to_s
  puts "\n"

  game = GameTurnBased.new(hero1, hero2)
  loop do
    game.hero_attacking(game.hero[0], game.hero[1])
    break if game.is_finished
    # puts "\n"

    game.hero_attacking(game.hero[1], game.hero[0])
    break if game.is_finished
    # puts "\n"
  end
end

start_game
