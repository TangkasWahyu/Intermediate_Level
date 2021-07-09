# inheritance in ruby

class Mammal
    def breath
        puts "I'm breathing"
    end
end

class Cat < Mammal
    def speak
        puts "meow"
    end
end

class Whale < Mammal
    def swim
        puts "Swimming"
    end
end

cat = Cat.new
cat.breath
cat.speak

whale = Whale.new
whale.breath
whale.swim