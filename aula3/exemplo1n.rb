#1 PARA n
class Aluno
   
   def initialize(nome, ra)
       @nome = nome 
       @ra = ra
   end
   
   def mostrar_dados
       puts "Nome: #{@nome}"
       puts "RA:   #{@ra}"
   end
end

class Disciplina 
   def initialize(nome)
       @nome = nome
       @alunos = []
   end
   
   def trancar(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                @alunos -= [aluno]
            else
                puts "Erro..."
       end
   end
   
   def matricular(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                @alunos << aluno
            else
                puts "Erro..."
       end
   end
   
   def listar
       puts "Disciplina: #{@nome}"
       for aluno in @alunos
           aluno.mostrar_dados
       end
   end
end

#Quero 6 alunos e um trancamento em 
#uma disciplina.
#Fazer a chamada dos 5.

a1 = Aluno.new("Italo","0050831721016")
a2 = Aluno.new("Lucas M","0050831722469")
a3 = Aluno.new("Marcus","0050831811001")
a4 = Aluno.new("Jordana","0050831722210")
a5 = Aluno.new("Teste","0050831720000")
a6 = Aluno.new("Teste1","0050831720001")
d = Disciplina.new("IDS-001 Desenv p Serv I")
d.matricular a1
d.matricular a2
d.matricular a3
d.matricular a4
d.matricular a5
d.matricular a6
d.trancar a5
d.listar