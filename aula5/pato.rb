module Floresta
   def Floresta.na_floresta(obj)
      #O RUBY CHAMOU OS METODOS SEM SE
      #IMPORTAR COM O TIPO DELE.
      obj.voar
      obj.grasnar
      obj.nadar
   end
end
# NOTE QUE Humano e Pato n POSSUEM RELACAO DE HERANCA
class Humano
    def grasnar
        puts "IMITOU PATO COM FANTASIA DE PATO!"
    end
    def nadar
        puts "NADOU COMO PATO COM FANTASIA DE PATO"
    end
    def voar
        puts "AI N..."
    end
end

class Passarinho
    def voar
        puts "PI PIU PIU: VOEI"
    end
end

class Pato
    def grasnar
        puts "QUACK QUAAAAACK!"
    end
    def nadar
        puts "NADOU COMO PATO"
    end
    def voar
        puts "VOOU COMO PATO"
    end
end
#DUCK TYPING: QUANDO UM CONTEXTO EXECUTAR METODOS
#QUE TENHAM DETERMINADOS NOMES, O DUCK TYPING
#PERMITIRA A EXECUCAO APENAS VERIFICANDO SE O
#O OBJETO EM QUESTAO POSSUI AQUELES NOMES.
#Floresta.na_floresta(obj) funciona com qualquer
#objeto obj que tenha os três m~etodos: grasnar,
#nadar e voar.
#Em Java, na_floresta(Pato obj), onde só seriam
#aceitos objetos Pato ou subclasses de Pato.
#Enquanto no Java ha uma dependecia da subclasse,
#aqui nao ha essa restricao.

p = Pato.new
h = Humano.new
pa = Passarinho.new
Floresta.na_floresta(p)
Floresta.na_floresta(h)
Floresta.na_floresta(pa)