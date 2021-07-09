# require_relative './import/Hero'
require_relative './import/HeroWithSkillDeflect'
require_relative './import/MongolArcher'
require_relative './import/MongolSpearman'
require_relative './import/MongolSwordman'

def start_game
    jin = HeroWithSkillDeflect.new('Jin Sakai', 100, 50)
    # khotun = Hero.new('Khotun Khan', 500, 50)
    archer = MongolArcher.new("Mongol Archer", 40, 80)
    spearman = MongolSpearman.new("Mongol Spearman", 50, 120)
    swordman = MongolSwordman.new("Mongol Swordman", 60, 100)

    villains = [archer, spearman, swordman]
    turn = 1

    loop do
        puts "======= Turn #{turn} ======= \n\n"
        
        puts jin
        villains.each do | villain |
            puts villain
        end
        puts "\n"

        villain = villains.sample

        jin.attack(villain)

        villains.delete(villain) if (villain.is_Dead?) || villain.is_fleed

        puts "#{villain.name} dead \n\n" if villain.is_Dead?
        break if villains.empty?

        villains.each do |villain|
            villain.attack(jin)
            break if jin.is_Dead?
        end
        
        break if jin.is_Dead?

        turn += 1
    end
end

start_game