#language: pt

Funcionalidade: Reproduzir Paródia
    Sendo um usuário cadastrado
    Quero reproduzir musicas no player do Parodify
    Para que eu possa ouvir paródias de minhas bandas favoritas

    Contexto: Login
        * Login com "anac@gmail.com" e "pwd123"

    Cenário: Ouvir Paródia

        Dado que eu goste de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo de reprodução
