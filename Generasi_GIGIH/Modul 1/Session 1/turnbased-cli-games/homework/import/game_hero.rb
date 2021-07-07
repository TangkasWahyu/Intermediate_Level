class Game_Hero
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
    if @name == "Jin Sakai" && deflect_attack?
       return
    end

    @hp -= damage
  end

  def attack(other_player)
    puts "#{@name} has #{@hp} hit point and #{@attack_dmg} attack damage"
    other_player.take_damage(@attack_dmg)
  end
  
  def is_Dead?
    if @hp <= 0
        puts "#{@name} dead"
        return true
    end

    puts "#{@name} has #{@hp} hitpoint still alive"
    return false
  end
  
  def deflect_attack?
    deflect_chance = rand(10)
    puts deflect_chance
    if deflect_chance <= 8
      puts "#{@name} deflects the attack"
      return true
    else
      return false
    end
  end
end
