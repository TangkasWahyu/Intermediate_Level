class Person
  attr_reader :name, :hp, :attack_dmg

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
    puts "#{@name} has #{@hp} hit point and #{@attack_dmg} attack damage"
    other_player.take_damage(@attack_dmg)
  end
  
  def is_Dead?
    if @hp <= 0
        puts "#{@name} dead"
        true
    end
  end
end
