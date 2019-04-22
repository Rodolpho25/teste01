class Usuario
    def initialize(email, senha)
        @email = email
        @senha = senha
    end
    
    def trocarSenha(novaSenha)
        novaSenha = novaSenha
        case senha 
            when Usuario
                @novaSenha << senha
        end
    end
end

module Pagina
    def Pagina.naPagina(obj)
        obj.apresentacao
        obj.dashboard
        obj.painel
    end
end

class Convidado < Usuario
    def initialize(email,senha)
        super(email,senha)
    end
    
    def apresentacao
        puts "Você está na página de apresentação"
        puts @email
    end
    
    def dashboard
        puts "Você não tem acesso!"
    end
    
    def painel 
        puts "Você não tem acesso!"
    end
end

class Autenticado < Usuario
    def initialize(email,senha)
        super(email,senha)
    end
    
    def apresentacao
        puts "Você está na página de apresentação"
        puts @email
    end
    
    def dashboard
        puts "Você não tem acesso!"
    end
    
    def painel 
        puts "Você está no painel!"
        puts @email
    end
end

class Adm < Usuario
    def initialize(email,senha)
        super(email,senha)
    end
    
    def apresentacao
        puts "Você está na página de apresentação"
        puts @email
    end
    
    def dashboard
        puts "Você está no dashboard!"
        puts @email
    end
    
    def painel 
        puts "Você está no painel!"
        puts @email
    end
end

c = Convidado.new("ex@ex1.com",123)
=begin
c.dashboard
c.painel
c.apresentacao
=end
Pagina.naPagina(c)
a = Autenticado.new("ex2@ex2.com",456)
=begin
a.dashboard
a.painel
a.apresentacao
=end
Pagina.naPagina(a)
ad = Adm.new("ex3@ex3.com",789)
=begin
ad.dashboard
ad.painel
ad.apresentacao
=end
Pagina.naPagina(ad)