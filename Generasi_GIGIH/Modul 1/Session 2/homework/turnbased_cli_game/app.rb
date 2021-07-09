require_relative './import/Hero'
require_relative './import/HeroWithSkillDeflectAndHealth'
require_relative './import/MongolArcher'
require_relative './import/MongolSpearman'
require_relative './import/MongolSwordman'

def start_game
    jin = HeroWithSkillDeflectAndHealth.new('Jin Sakai', 500, 80)
    # khotun = Hero.new('Khotun Khan', 500, 50)
    yuna = Hero.new("Yuna", 500, 90)
    sensei = Hero.new("Sensei Ishikawa", 500, 80)

    archer = MongolArcher.new("Mongol Archer", 500, 80)
    spearman = MongolSpearman.new("Mongol Spearman", 500, 120)
    swordman = MongolSwordman.new("Mongol Swordman", 500, 100)

    allies = [yuna, sensei]
    jin_team = [jin, *allies]
    villains = [archer, spearman, swordman]
    turn = 1

    loop do
        puts "======= Turn #{turn} ======= \n\n"
        
        puts jin
        allies.each do | ally |
            puts ally
        end
        puts "\n"

        villains.each do | villain |
            puts villain
        end
        puts "\n"

        puts "As #{jin.name}. what do you want to do in this turn?"
        puts "1) Attack an enemy"
        puts "2) Heal an ally"

        attack_or_heal = gets.chomp.to_i
        case attack_or_heal
            when 1
                puts "Which enemy you want to attack?"
                villains.each_with_index do | villain, index |
                    puts "#{index + 1}) #{villain}"
                end
                index_of_villain = gets.chomp.to_i

                villain = villains[index_of_villain - 1]
                jin.attack(villain)

                villains.delete(villain) if (villain.is_Dead?) || villain.is_fleed

                break if villains.empty?
            when 2
                puts "Which ally you want to heals?"
                allies.each_with_index do | alley, index |
                    puts "#{index + 1}) #{alley}"
                end
                index_of_ally = gets.chomp.to_i

                jin.heals(allies[index_of_ally - 1])
            else
                puts "Please input 1 or 2"
        end
        break if villains.empty?

        allies.each do |ally|
            villains_index = rand(villains.length)
            villain = villains[villains_index]

            ally.attack(villain)

            villains.delete(villain) if (villain.is_Dead?) || villain.is_fleed

            break if villains.empty?
        end
        break if villains.empty?
        puts "\n"

        villains.each do |villain|
            jin_team_index = rand(jin_team.length)
            someone_from_jin_team = jin_team[jin_team_index]

            villain.attack(someone_from_jin_team)

            if (someone_from_jin_team.is_Dead?)
                jin_team.delete(someone_from_jin_team) 
                allies.delete(someone_from_jin_team) 
            end
        end

        turn += 1
    end
end

start_game