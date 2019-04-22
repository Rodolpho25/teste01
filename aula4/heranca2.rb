class Animal
    
    def initialize(name)
        @name = name
    end
    
    def dormir
        puts "#{@name}: ZzzzzZzZZzZzzZzZ"
    end
    
    def comer
        puts "#{@name}: COMEU..." 
    end
end

class Cachorro < Animal
    def initialize(name)
        #CHAMA O CONSTRUTOR DA SUPERCLASSE
        #AQUI EH COPIADO O @nome    
        super(name)
    end
    
    def latir
        puts "#{@name}: AUAUAUAUAUA"
    end
end

class Gato < Animal
    def initialize(name,vidas)
        super(name)
        #Qualquer atributo eh colocado
        #apos a chamada do super
        @vidas = vidas
    end
    
    def mostra_vidas
        puts "HA #{@vidas} VIDA(S)"
    end
    
    def miar
        puts "#{@name}: MIAUUU"
    end
end

c = Cachorro.new("BESOURINHO") 
c.latir
c.comer 
c.dormir
g = Gato.new("Branco",5)
g.miar 
g.comer 
g.dormir
g.mostra_vidas






