class Imc
    def initialize(altura,peso)
        @altura = altura
        @peso = peso
        
        if @peso >= 0.1 and @peso < 300
            @peso = peso
        else 
            puts "Peso inválido."
        end
        
        if @altura >= 0.5 and @altura < 2.2
            @altura = altura
        else
            puts "Altura inválida."
        end
    end
    
    def calcular
        calc = @peso/@altura**2
        case calc
            when (0..18)
                puts "Você está abaixo do peso!"
            when (19..25)
                puts "Você está no peso ideal!"
            when (26..100)
                puts "Você está acima do peso!"
        end
    end
end

p1 = Imc.new(1.85,97)
p1.calcular