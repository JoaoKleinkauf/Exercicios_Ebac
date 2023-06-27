#language: pt

Funcionalidade: Checkout de produtos

    Contexto:
        Dado que eu acesse a página de checkout da EBAC-SHOP

    Cenário: Campos obrigatorios
        Quando eu deixar algum campo do cadastro que seja obrigatorio em branco
        E e clicar em finalizar
        Então deve exibir um alerta "Campo obrigatorio não preenchido!"

    Cenário: Email invalido
        Quando eu digitar o email "joao#gmail.com" no campo email
        E e clicar em finalizar
        Então deve exibir um alerta "Erro: Email Invalido!"

    Cenário: Campo Vazio
        Quando no decorrer do cadastro se eu deixar um campo em braco
        E for para o próximo
        Então deve ser exibido um alerta de "Campo Vazio!"