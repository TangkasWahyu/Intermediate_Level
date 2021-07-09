require_relative './Hero'
require_relative './HeroWithSkillDeflect'

def create_hero(name, hp, attack_dmg, is_hero = nil)
  return HeroWithSkillDeflect.new(name, hp, attack_dmg) if is_hero

  Hero.new(name, hp, attack_dmg)
end
