# inheritance

class Grandfather
    def initialize
        puts "In Grandfather class"
    end

    def gfmethod
        puts "Grandfather method call"
    end
end

class Father < Grandfather
    def initialize
        puts "In Father class"
    end
end

class Son < Father
    def initialize
        puts "In Son class"
    end
end

son = Son.new
son.gfmethod
father = Father.new