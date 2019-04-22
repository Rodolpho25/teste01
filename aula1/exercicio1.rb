#class Revolver
#    def initialize
#        @m1=10
#    end
    
#    def atirar
#        if @m1 == 0
#        puts   "Acabo a bala otario"
#        else
#            @m1= @m1 - 1
#        end
#    end
    
#    def recarregar
#        if @m1 < 10
#            @m1= @m1 + 1
#        else
#        puts    "Revolver ja esta recarregado"
#        end
#    end

#    def mostrar_municao
#        puts "A quantidade de municao eh: #{@m1}/10"
#    end    
    
#end

#r = Revolver.new
#r.atirar
#r.atirar
#r.carregar
#r.mostrar_municao

class Revolver
    def initialize(municao,qt_max)
        @municao = municao
        @qt_max = qt_max
    end
    
    def atirar
        unless @municao == 0
            @municao -= 1
        else
            puts "Sem munição"
        end
    end
    
    def recarregar
        unless @municao >= @qt_max
            @municao += 1
        else
            puts "Pente cheio"
        end
    end
    
    def mostrar
        puts "Munição #{@municao}/#{@qt_max}"    
    end
end

r = Revolver.new(6,6)
r.atirar
r.atirar
r.atirar
r.atirar
r.atirar
r.atirar
r.atirar
r.mostrar