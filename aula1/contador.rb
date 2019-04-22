class Contador
   def initialize
        zerar
    end
    
    def incrementar 
        @cter = @cter + 1
    end
    
    def zerar
        @cter = 0
    end
    
    def mostrar_numero
        puts "A quantidade eh: #{@cter}"
    end
end

k = Contador.new
k.incrementar
k.incrementar
k.incrementar
k.mostrar_numero