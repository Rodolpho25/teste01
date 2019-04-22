class Entrega
    def initialize (rua,cidade,estado)
        @rua = rua
        @cidade = cidade
        @estado = estado
    end
    
    def validar_estado
        case @estado
            when :SP
                puts "Estado valido"
            when :RJ
                puts "Estado valido"
            when :MG
                puts "Estado valido"
            when :GO
                puts "Estado valido"
            when String
                puts "Estado Invalido"
        end
    end
    
    def mostrar
        puts "Rua #{@rua}, cidade #{@cidade} e estado #{@estado}"
    end
        
end

e = Entrega.new("ana costa","Santos",:SP)
c.validar_estado
c.mostrar