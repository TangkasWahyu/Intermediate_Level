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
    if @name == "Jin Sakai" && hasChance(0.8)
      # do nothing
      puts hasChance
      puts "hjhjh"
    else
      @hp -= damage
    end
  end

  def attack(other_player)
    puts "#{@name} has #{@hp} hitpoint and #{@attack_dmg} attack damage"
    other_player.take_damage(@attack_dmg)
  end
  
  def isDead?
    if @hp <= 0
        puts "#{@name} dead"
        true
    end
  end

  def hasChance(prob=0.8)
    rand < prob
  end
end
