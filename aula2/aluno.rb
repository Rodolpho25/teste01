# Associação (has-A) quando uma classe A possui uma classe B. Nesse caso, dizemos que A tem um has-A B

class Endereco
    #Estado sao symbols
    def initialize (logradouro,cidade,estado)
        @logradouro = logradouro
        @cidade = cidade
        case estado
            when Symbol
                @estado = estado
            when String
                @estado = estado.to_sym
        end
    end
    
    def converter
        case @estado
            when :SP
                "Sao Paulo"
            when :RJ
                "Rio de Janeiro"
            when :MG
                "Minas Gerais"
            when :ES
                "Espirito Santo"
        end
    end
    
    def mostrarDados
        puts "Logradouro: #{@logradouro}"
        puts "Cidade: #{@cidade}"
        estado = converter
        puts "Estado: #{@estado}"
    end
    
end

class Aluno 
    def initialize(nome,endereco)
        @nome = nome 
        #Aluno tem um Endereco
        #OBJETO ENDERECO
        @endereco = endereco
    end
    
    def mostrarAluno
        puts "Nome: #{@nome}"
        @endereco.mostrarDados
    end
end

e = Endereco.new("Rua teste","Cubatao",:SP)
#A ASSOCIACAO ENTRE AS CLASSES ESTA
#DEFINIDA NA LINHA ABAIXO. e EH UM OBJETO
#ENDERECO QUE ATRIBUTO DE Aluno (objeto a)
#LINHAS 43,48 E 47: ATENCAO
a = Aluno.new("MARLON",e)
a.mostrarAluno