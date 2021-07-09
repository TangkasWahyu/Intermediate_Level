class GameTurnBased
  attr_reader :hero, :is_finished, :is_winner, :is_loser

  def initialize(hero1, hero2)
    @hero = [hero1, hero2]
    @is_finished = false
    @is_winner = nil
    @is_loser = nil
  end

  def hero_attacking(attack, attacked)
    attack.attack(attacked)
    if attacked.is_Dead?
      game_finished(attack, attacked)
    else
      attacked.to_s
    end
  end

  def game_finished(is_winner, is_loser)
    puts "Congratulations you won Mr.#{is_winner.name} is still alive because the hit point are still there!"
    @is_finished = true
  end
end
