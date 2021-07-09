require_relative 'Mongol'

class MongolSwordman < Mongol
    def attack(other_player)
        puts "#{@name} slashes #{other_player.name} with #{@attack_dmg} damage \n"
        super(other_player)
    end
end