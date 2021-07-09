class Game_Hero
  attr_reader :name, :hp, :attack_dmg

  def initialize(name, hitpoints, attack_damage)
    @name = name
    @hp = hitpoints
    @attack_dmg = attack_damage
  end

  def to_s
    "#{@name} has #{@hp} hitpoint and #{@attack_dmg} attack damage"
  end
  
  def take_damage(damage)
    @hp -= damage
  end

  def attack(other_player)
    other_player.take_damage(@attack_dmg)
    puts "#{@name} has #{@hp} hitpoint and #{@attack_dmg} attack damage"
  end
  
  def isDead?
    if @hp <= 0
        puts "#{@name} dead"
        true
    end
  end
end
