#language: pt

Funcionalidade: Configuração de Produto

    Contexto:
        Dado que eu esteja na página de um produto da loja EBAC-SHOP

    Cenário: Configuração não selecionada
        Quando eu deixar de selecionar uma das três configurações obrigatórias
        E clicar em comprar
        Então deve ser exibido uma mensagem avisando o cliente "complete o campo que falta"

    Cenário: Acima da quantidade
        Quando na configuração de produto eu selecionar uma quantidade acima de 10
        E clicar em comprar
        Então deve ser exibido uma mensagem avisando o cliente "a quantidade máxima permitida é 10"

    Cenário: Limpando Configurações
        Quando eu preencher as configurações
        E clicar em limpar
        Então as configurações do produto devem voltar ao estado original

    Cenário: Compra bem sucedida
        Quando eu selecionar todas as configurações do meu produto
        E clicar em comprar
        Então o produto deve ser encaminhado para o carrinho