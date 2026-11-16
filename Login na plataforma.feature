            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login/autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Cenário: Login com sucesso
            Quando insiro meu "<usuário>"
            E insiro minha "<senha>"
            Então devo ser autenticado e redirecionado para a página de perfil

            Cenário: Login usuário inválido
            Quando insiro meu "<usuário>"
            E insiro minha "<senha>"
            Então devo receber a mensagem de erro "Usuário inválido"

            Cenário: Login com senha errada
            Quando insiro meu "<usuário>"
            E insiro minha "<senha>"
            Então devo receber a mensagem de erro "Usuário ou senha inválidos"

            Cenário: Login usuário e senha inválidos
            Quando insiro meu "<usuário>"
            E insiro minha "<senha>"
            Então devo receber a mensagem de erro "Usuário ou senha inválidos"

            Esquema do Cenário: Login com campos obrigatórios
            Quando insiro meu "<usuário>"
            E insiro minha "<senha>"
            Então devo ser autenticado e redirecionado para a página com meus pedido

            Exemplos:
            | usuário          | senha          | mensagem                    |
            | usuario_valido   | senha_valida   | Login efetuado com sucesso! |
            | usuario_invalido | senha_valida   | Usuário inválido            |
            | usuario_valido   | senha_invalida | Usuário ou senha inválidos  |
            | usuario_invalido | senha_invalida | Usuário ou senha inválidos  |