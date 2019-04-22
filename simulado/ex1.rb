class Candidato 
    #attr_reader :numero, :partido, :votos, :nome
    def initialize(num, partido, nome)
        @num = num
        @partido = partido
        @votos = 0
        @nome = nome
    end
    
    def votar
        @votos += 1
    end
    
    def num
        @num
    end
    
    def partido
        @partido
    end
    
    def votos
        @votos
    end
    
    def nome
        @nome
    end
end

class Eleicao
    #attr_reader :ano
    def initialize(ano)
        @ano = ano
        @candidatos = []
    end
    
    def adicionar(candidato)
        if candidato.is_a? Candidato
            @candidatos << candidato
        else
            puts "Erro !"
        end
    end

    def votarNumero(numero)
        for c in @candidatos
            if numero == c.num
                c.votar
            end
        end
    end
    
    def mostrarVotos
        for c in @candidatos
            puts "O candidato #{c.nome} teve #{c.votos} votos!"
        end
        puts "Ano da eleição: #{@ano}"
    end

    def mostrarPartidos
        vtAzul = 0
        vtVermelho = 0
        vtVerde = 0
        for c in @candidatos
            case c.partido
                when :Azul
                    vtAzul += c.votos
                    puts "O partido azul tem: #{vtAzul}"
                when :Vermelho
                    vtVermelho += c.votos
                    puts "O partido vermelho tem: #{vtVermelho}"
                when :Verde
                    vtVerde += c.votos
                    puts "O partido verde tem: #{vtVerde}"
            end
        end
    end
end

e1 = Eleicao.new(2018)
e1.adicionar(c1 = Candidato.new(11,:Azul,"José"))
e1.adicionar(c2 = Candidato.new(22,:Vermelho,"Paulo"))
e1.adicionar(c3 = Candidato.new(33, :Verde, "Maria"))
e1.votarNumero(22)
e1.votarNumero(22)
e1.votarNumero(11)
e1.votarNumero(33)
e1.votarNumero(33)
e1.votarNumero(33)
e1.votarNumero(22)
e1.mostrarVotos
e1.mostrarPartidos
