require_relative 'Hero'

class Mongol < Hero
    def initialize(name, hp, attack_dmg)
        super(name, hp, attack_dmg)
        @is_fleed = false
        @fleed_chance = 0.5
    end

    def attack(other_player)
        other_player.take_damage(@attack_dmg)
    end
    
    def take_damage(damage)
        super(damage)
        fleeing?
    end

    def fleeing?
        if rand >= @fleed_chance && @is_dead
            @is_fleed = true
            puts "#{@name} has fled the battlefield with #{@hitpoints} hitpoint left \n\n"
        end
    end
end