#language: pt

@get
Funcionalidade: Planeta
    Validar operações da API Planetas

    @get_planeta
    Cenário: Validar GET API planeta codigo 404
        Dado uma requisição GET para o serviço planeta 
        Quando o serviço planeta responder com status 404
        Então retorna uma mensagem de alerta 