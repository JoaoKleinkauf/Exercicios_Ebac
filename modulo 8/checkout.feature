Feature: Checkout de produtos

    Background:
        Given que eu acesse a página de checkout da EBAC-SHOP

    Scenario: Campos obrigatorios
        When eu deixar algum campo do cadastro que seja obrigatorio em branco
        And e clicar em finalizar
        Then deve exibir um alerta "Campo obrigatorio não preenchido!"

    Scenario: Email invalido
        When eu digitar o email "joao#gmail.com" no campo email
        And e clicar em finalizar
        Then deve exibir um alerta "Erro: Email Invalido!"

    Scenario Outline: Validar emails
        When eu digitar um email <email> no campo email
        And e clicar em finalizar
        Then deve exibir um alerta "Erro: Email Invalido!"

        Examples:
            | email          |
            | joao#gmail.com |
            | joao@gmal.com  |
            | joao@gm4il.com |
            | joao@jmail.com |