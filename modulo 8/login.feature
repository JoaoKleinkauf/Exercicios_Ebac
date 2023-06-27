#language: pt

Funcionalidade: Login na Plataforma

    Contexto:
        Dado que eu acesse a página de login da EBAC-SHOP

    Esquema do Cenário: Logins bem sucedidos
        Quando eu digitar um email <email> no campo email
        E a senha <senha>
        Então deve me redirecionar para página de checkout

        Exemplos:
            | email               | senha     |
            | joao@hotmail.com    | senha#123 |
            | maria@gmail.com     | senha#123 |

    Esquema do Cenário: Logins Invalidos
        Quando eu inserir o usuário <email>
        E a senha <senha>
        Então deve aparecer a mensagem "Usuário ou senha inválido"

        Exemplos:
            | email            | senha       |
            | mariaa@gmail.com | senha#123   |
            | maria@gmail.com  | senha#12345 |
            | m4ria@gmail.com  | Senha#1234  |

