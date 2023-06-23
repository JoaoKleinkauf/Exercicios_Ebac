Feature: Login na Plataforma

    Background:
        Given que eu acesse a página de login da EBAC-SHOP

    Scenario: Usuário invalido
        When eu inserir o usuário "mariana@gmail.com"
        And a senha "senha#123"
        Then deve aparecer a mensagem "Usuário ou senha inválido"

    Scenario: Senha invalido
        When eu inserir o usuário "maria@gmail.com"
        And a senha "senha#12345"
        Then deve aparecer a mensagem "Usuário ou senha inválido"

    Scenario: Usuário e senha invalido
        When eu inserir o usuário "mariana@gmail.com"
        And a senha "senha#12345"
        Then deve aparecer a mensagem "Usuário ou senha inválido"

    Scenario: Login bem-sucedido
        When eu inserir o usuário "maria@gmail.com"
        And a senha "senha#123"
        Then deve me redirecionar para página de checkout

    Scenario Outline: Multipolos login bem sucedidos
        When eu digitar um email <email> no campo email
        And a senha <senha>
        Then devo ser direcionado para a página com os meus pedidos

        Examples:
            | email             | senha     |
            | joao@gmail.com    | senha#123 |
            | maria@gmail.com   | senha#123 |
            | ricardo@gmail.com | senha#123 |
            | jose@gmail.com    | senha#123 |
            | willian@gmail.com | senha#123 |
            | junior@gmail.com  | senha#123 |