#RANGE: Eh um tipo limitado de inteiros
#Symbol: Strings imutáveis. Representam
#valores categoricos.
class Curso
    def initialize(nome,carga)
        @nome = nome 
        @carga = carga
    end
    
    def validar_carga
        case @carga
            when 0..2000
                puts "Carga invalida"
            when 2001..3000
                puts "Carga ok"
        end
    end
    
    def mostar
        puts "Curso: #{@nome}, carga: #{@carga}"
    end
    
    def frase_de_odio
        case @nome
            when :ADS
                puts "Curso de COBOL"
            when :SI
                puts "Curso de designer"
            when :LOG
                puts "Curso de container"
            when :GE
                puts "Curso de cafe da manha"
            when :GP
                puts "Curso de desemprego"
            when String
                puts "Curso invalido"
            when Integer
                puts "N aceito numero"
        end
    end
end

c = Curso.new(:SI,2880)
c.mostar
c.frase_de_odio
c.validar_carga