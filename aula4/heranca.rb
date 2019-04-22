class Animal 
    def dormir 
        puts "ZzzzzZZz..."
    end
    
    def comer 
        puts "Comeu..."
    end
end

class Gato < Animal
    def miar
        puts "MIAUUUUU..."
    end
end

class Cachorro < Animal
    def latir
        puts "AUAUAUAU..."
    end
end

a = Animal.new 
a.dormir
a.comer 
c = Cachorro.new 
c.dormir
c.comer
c.latir
g = Gato.new 
g.comer
g.dormir
g.miar





