require_relative "./Hero.rb"

class HeroWithSkillDeflect < Hero
    def initialize(name, hp, attack_dmg)
        super(name, hp, attack_dmg)
        # @deflect_chance = rand(10)
        @deflect_chance = 0.8
    end

    def take_damage(damage)
        # if @deflect_chance <= 8
        if rand < @deflect_chance
            damage = 0
            puts "#{@name} deflects the attack"
            return true
        end
        super(damage)
    end
end