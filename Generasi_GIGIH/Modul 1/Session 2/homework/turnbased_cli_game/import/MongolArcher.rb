require_relative 'Mongol'

class MongolArcher < Mongol
    def attack(other_player)
        puts "#{@name} shots #{other_player.name} with #{@attack_dmg} damage \n"
        super(other_player)
    end
end