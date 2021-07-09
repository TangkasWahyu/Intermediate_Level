require_relative 'HeroWithSkillDeflect'

class HeroWithSkillDeflectAndHealth < HeroWithSkillDeflect
    def initialize(name, attack_dmg, deflect_chance)
        super(name, attack_dmg, deflect_chance)
        @healing_point = 20
    end

    def heals(otherPlayer)
        otherPlayer.heals(20)
        puts "#{@name} heals #{otherPlayer.name}, restoring #{@healing_point} hit point"
    end
end