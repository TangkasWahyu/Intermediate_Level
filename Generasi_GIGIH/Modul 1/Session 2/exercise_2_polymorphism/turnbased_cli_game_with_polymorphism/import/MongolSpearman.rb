require_relative 'Mongol'

class MongolSpearman < Mongol
    def attack(other_player)
        puts "#{@name} thrusts #{other_player.name} with #{@attack_dmg} damage \n"
        super(other_player)
    end
end