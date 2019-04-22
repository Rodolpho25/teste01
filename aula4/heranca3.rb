class Zoo 
    def initialize()
        @jaulas = []
    end
    
    def enjaular(animal)
       #O IS_A? VERIFICA SE UM OBJETO
       # EH DE DETERMINADO TIPO (OU DE
       #SUAS SUBCLASSE)
       if animal.is_a? Animal 
            @jaulas << animal
       else
            puts "Erro..."
       end
   end
   
   def gritar_em_conjunto
       for animal in @jaulas 
           if animal.is_a? Cachorro
               animal.latir
           end
           if animal.is_a? Gato
               animal.miar
           end
       end
   end
   
   def gritar_em_conjunto_certo
       for animal in @jaulas 
           animal.emitir_som
       end
   end
end

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
    
    def emitir_som
        raise "Nao pode chamar emitir_som do Animal"
    end
end


class Cachorro < Animal
    def initialize(name)
        super(name)
    end
    
    def latir
        puts "#{@name}: AUAUAUAUAUA"
    end
    
    def emitir_som
        latir
    end
end

class Gato < Animal
    def initialize(name)
        super(name)
    end
    
    def miar
        puts "#{@name}: MIAU..."
    end
    
    def emitir_som
        miar
    end
end

z = Zoo.new
z.enjaular(Cachorro.new("BIDU"))
z.enjaular(Cachorro.new("MONSTRO"))
z.enjaular(Cachorro.new("DOLLAR"))
z.enjaular(Gato.new("Frangolino"))
a = Animal.new("GENERICO") 
z.enjaular(a)
z.gritar_em_conjunto
z.gritar_em_conjunto_certo
