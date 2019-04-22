# UM @: ATRIBUTO
# @@: ESTATICO
# Atributos Estaticos sao desaclopados da instancia, criando assim um ponto de acesso "global" para todos os objetos
# Obs: Valido para metodos. Atributos/metodos estaticos sao chamados de membros de classe.

class Frog
    
    @@quantidade = 0
    
    def initialize(pulo=0)
        @pulo = pulo
        @@quantidade += 1
    end
    
    def pular
        @pulo += 1
    end
    
    def Frog.mostrarQuantidade
        puts "HA #{@@quantidade} sapos na memoria"
    end
    
    def qtdPulo
        puts "Pulou #{@pulo} vezes"
    end
        
end

f = Frog.new
g = Frog.new(1)
h = Frog.new

Frog.mostrarQuantidade
g.pular
h.pular
f.qtdPulo
g.qtdPulo
h.qtdPulo

