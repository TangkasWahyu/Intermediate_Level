require_relative './import/person'
require_relative './import/hero'

def start_game
    jin = Hero.new('Jin Sakai', 100, 50)
    puts jin
    puts "\n"

    khotun = Person.new('Khotun Khan', 500, 50)
    puts khotun
    puts "\n"

    loop do
        jin.attack(khotun)
        puts khotun
        puts "\n"
        break if khotun.is_Dead?

        khotun.attack(jin)
        puts jin
        puts "\n"
        break if jin.is_Dead?
    end
end

start_game