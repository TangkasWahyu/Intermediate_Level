require_relative './import/action'
require_relative './import/attack'
require_relative './import/heal'
require_relative './import/hero'
require_relative './import/mongol_archer'
require_relative './import/mongol_spearman'
require_relative './import/mongol_swordsman'
require_relative './import/person'
require_relative './import/villain'

jin = Hero.new("Jin Sakai", 100, 50)
yuna = Hero.new("Yuna", 90, 45)
sensei = Hero.new("Sensei Ishikawa", 80, 60)
heros = [jin, yuna, sensei]

mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordsman = MongolSwordsman.new("Mongol Swordsman", 100, 50)
villains = [mongol_archer, mongol_spearman, mongol_swordsman]

question = "As Jin Sakai, what do you want to do this turn?\n1) Attack an enemy\n2) Heal an ally\n\nYour choose: "

i = 1
until (heros.die? || villains.empty?) do
    puts "========== Turn #{i} =========="
    puts "\n"

    puts heros
    puts villains

    puts question
    # stomp

    villains.each do |villain|
        villains.delete(villain) if villain.die? || villain.flee?
    end
    puts "\n"

    villains.each do |villain|
        villain.attack(jin)
    end
    puts "\n"

    i += 1
end