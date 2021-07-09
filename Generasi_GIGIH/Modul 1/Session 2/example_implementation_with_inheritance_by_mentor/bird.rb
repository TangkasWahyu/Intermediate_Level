# overriding inheritance

class Bird
    def presence
        puts "I'm cleaning my feathers"
    end

    def fly
        puts "I'm flying"
    end
end

class Penguin < Bird
    def fly
        puts "I cannot fly"
    end
end

pinguin = Penguin.new
penguin.preen
penguin.fly