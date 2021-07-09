require_relative "./person.rb"

class Hero < Person
    def initialize(name, hitpoints, attack_damage)
        super(name, hitpoints, hitpoints)
        @deflect_chance = 0.8
    end

    def take_damage(damage)
        if rand < @deflect_chance
            puts "#{@name} deflects the attack"
            return true
        else
            @hp -= damage
        end
    end
end