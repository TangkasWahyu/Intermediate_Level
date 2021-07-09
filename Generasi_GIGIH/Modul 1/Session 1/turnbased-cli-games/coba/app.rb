require_relative './import/game_hero'

def start_game
    jin = Game_Hero.new('Jin Sakai', 100, 50)
    puts jin
    puts "\n"

    khotun = Game_Hero.new('Khotun Khan', 500, 50)
    puts khotun
    puts "\n"

    loop do
        jin.attack(khotun)
        puts khotun
        puts "\n"
        break if khotun.isDead?

        khotun.attack(jin)
        puts jin
        puts "\n"
        break if jin.isDead?
    end
end

start_game