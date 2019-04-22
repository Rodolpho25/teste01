#SOBRESCRITA: USO DO MESMO NOME
#DE METODO NAS SUBCLASSES. 
#ELA GENERALIZARA UM COMPORTAMENTO
#A PARTIR DESSE NOME.
class Figura
    def initialize(lado)
        @lado = lado
    end
    
    def calcular_area
        0
    end
    
    def calcular_perim
        0
    end
end

class Quadrado < Figura
    def initialize(lado)
        super(lado)
    end
    
    def calcular_area
        @lado*@lado
    end
    
    def calcular_perim
        4*@lado
    end
end

class Retangulo < Figura 
    def initialize(lado,lado2)
        super(lado)
        @lado2 = lado2
    end 
    
    def calcular_perim
        2*@lado + 2*@lado2
    end
    
    def calcular_area
        @lado*@lado2   
    end
end

q = Quadrado.new(7)
puts q.calcular_perim
puts q.calcular_area
r = Retangulo.new(2,3)
puts r.calcular_perim
puts r.calcular_area

