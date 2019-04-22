module Brincavel
    #Puxado pelo module
    def Brincavel.estatico
        puts "Brincou estaticamte como #{self.class}"
    end
    
    #Puxado por alguma classe que usa
    # o comando include.
    def brincar
        puts "Brincou como #{self.class}"
    end
end

module Matavel
    def matar
        puts "Matou como #{self.class}"
    end
end

class Animal
    def dormir
        puts "ZZZZZ..."
    end
    def emitirSom
        raise "Metodo n suportado"
    end
end

class Cachorro < Animal
    include Brincavel
    
    def emitirSom
        puts "AU AU AU..."
    end
    
    def cavar
        puts "Cavou..."
    end
end

class Gato < Animal
    include Brincavel
    def emitirSom
        puts "MIAU..."
    end 
    def arranhar
        puts "Arranhar..."
    end
end

class Urso < Animal
    include Matavel
    def emitirSom
        puts "ROARRRRRR"
    end
    def hibernar
        puts "ZZZZZZ por meses"
    end
end

class Robo
    def ligar
        puts "Ligou.."
    end
    def desligar
        puts "Desligou"
    end
    def recarregar
        puts "Recarregou"
    end
end

class IDog < Robo
    include Brincavel
    def pular
        puts "Pulou.."
    end
end

class Transformer < Robo
    include Matavel
    include Brincavel
    def atirar
        puts "Atirou.."
    end
end
c = Cachorro.new 
c.brincar
i = IDog.new
i.pular #dele
i.ligar #heranca
i.desligar #heranca
i.brincar #misturado pelo modulo
t = Transformer.new
t.brincar
t.matar
Brincavel.estatico
