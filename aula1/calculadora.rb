class Calculadora
   def initialize(n1,n2)
        @n1 = n1
        @n2 = n2
    end
    
    def somar
        @n1 + @n2
    end
    
    def mult
        @n1 * @n2
    end
    
    def dividir
        unless @n2 ==0
            @n1/@n2
        else
            "Erro divisao por zero"
        end
    end
end

c = Calculadora.new(5.0,0.0)
puts c.dividir