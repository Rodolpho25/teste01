class Aluno
    #ACESSO DE LEITURA
    #attr_reader :nome
    #ACESSO DE ESCRITA
    #attr_writer :nome
    #OS DOIS
    attr_accessor :nome
        
    def initialize(nome)
        @nome = nome
    end
    
    def metodo
        puts "Um metodo!!"
    end
    
    def metodo_publico(a)
        a.metodo
    end
    protected :metodo
    #WRITE OU SETTER
    #MODIFICA O ATRIBUTO @nome
    #USE COM MODERACAO
    #def nome= n 
    #    @nome = n
    #end
    #GETTER OU READER
    #DEU ACESSO DE LEITURA AO
    #ATRUBUTO @nome
    #def nome
    #    @nome
    #end
end

#QUERO PUXAR(ACESSAR) 
#@nome DE FORA DA CLASSE
#ALUNO.
a = Aluno.new("JOAO") 
a.nome = "NOME"
puts a.nome

#O PRIVATE IMPEDE O ACESSO EXTERNO
#AO METODO E ACESSO DE UM CHAMADOR
#EXPLICITO (MESMO QUE SEJA O self)
#a.metodo
b = Aluno.new("TESTE")
a.metodo_publico(b)

#O PROTECTED LIBERA O ACESSO PARA
#1) CHAMADORES EXPLICITOS DENTRO
#DA CLASSE QUE POSSUI O METODO PROTECTED.
#2) PARA SUBCLASSES.
