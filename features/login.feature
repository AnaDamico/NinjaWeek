#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso a playlists

    @smoke
    Cenário: Login do Usuário
        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "anac@gmail.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email          | senha  |
            | anac@bol.com   | abc789 |
            |                |        |
            | anac@gmail.com |        |
            |                | pwd123 |