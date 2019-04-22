#N PARA M
class Disciplina 
   def initialize(nome)
       @nome = nome
       @alunos = []
   end
   
   # O METODO NOME ESTA LIBERANDO ACESSO DE
   # LEITURA PARA O ATRIBUTO @nome
   def nome
      @nome
   end
   
   def trancar(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                #REMOVO A DISCIPLINA CORRENTE
                #A DISCIPLINA QUE CHAMOU O TRANCAR
                #FICARA SENDO COMO O self.
                aluno.remover_disc(self)
                @alunos -= [aluno]
            else
                puts "Erro..."
       end
   end
   
   def matricular(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                aluno.inserir_disc(self)
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

class Aluno
   
   def initialize(nome, ra)
       @nome = nome 
       @ra = ra
       @ds = []
   end
   
   def inserir_disc(disc) 
       case disc 
            when Disciplina 
                @ds << disc
            else
                puts "Erro..."
       end
   end
   
   def remover_disc(disc) 
       case disc 
            when Disciplina 
                @ds -= [disc]
            else
                puts "Erro..."
       end
   end
   
   def mostrar_dados
       puts "Nome: #{@nome}"
       puts "RA:   #{@ra}"
   end
   
   def listar
       puts "Aluno: #{@nome}"
       for disciplina in @ds 
           puts "Matriculado em: #{disciplina.nome}"
       end
   end
end

#4 alunos em 2 disciplinas. Fazer a listagem 
#de um aluno e de uma disciplina. Faça
# com que um dos alunos tranque.

a1 = Aluno.new("Italo","0050831721016")
a2 = Aluno.new("Lucas M","0050831722469")
a3 = Aluno.new("Marcus","0050831811001")
a4 = Aluno.new("Jordana","0050831722210")
d = Disciplina.new("IDS-001 Desenv p Serv I")
d.matricular a1
d.matricular a2
d.matricular a3
d.matricular a4
d2 = Disciplina.new("IDS-002 Seguranca para Internet")
d2.matricular a1
d2.matricular a2
d2.matricular a3
d2.matricular a4
d.trancar a1
a1.listar
d.listar