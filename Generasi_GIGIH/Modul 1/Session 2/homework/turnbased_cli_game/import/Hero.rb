class Hero
  attr_reader :name, :hp, :attack_dmg, :is_fleed

  def initialize(name, hitpoints, attack_damage)
    @name = name
    @hp = hitpoints
    @attack_dmg = attack_damage
  end

  def to_s
    "#{@name} has #{@hp} hit point and #{@attack_dmg} attack damage"
  end
  
  def take_damage(damage)
    @hp -= damage
  end

  def attack(other_player)
    puts "#{@name} attacks #{other_player.name} with #{@attack_dmg} damage"
    other_player.take_damage(@attack_dmg)
  end
  
  def is_Dead?
    if @hp <= 0
      puts "\n"
      puts "#{@name} is dead"
      return true
    end

    puts "#{@name} has #{@hp} hit point still alive"
    puts "\n"
    return false
  end

  def heals(healing_point)
    @hp += healing_point
  end
end
