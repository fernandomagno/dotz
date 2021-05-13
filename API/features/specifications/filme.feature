#language: pt

@get
Funcionalidade: Filme
    Validar operações da API Filmes

    @get_filme
    Cenário: Validar GET API filme codigo 200
        Dado uma requisição GET para o serviço filme
        Quando o serviço filme responder com status 200
        Então retorna uma lista de filmes



