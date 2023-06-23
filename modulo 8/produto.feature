Feature: Configuração de Produto

    Background:
        Given que eu esteja na página de um produto da loja EBAC-SHOP

    Scenario: Configuração não selecionada
        When eu deixar de selecionar uma das três configurações obrigatórias
        And clicar em comprar
        Then deve ser exibido uma mensagem avisando o cliente "complete o campo que falta"

    Scenario: Acima da quantidade
        When na configuração de produto eu selecionar uma quantidade acima de 10
        And clicar em comprar
        Then deve ser exibido uma mensagem avisando o cliente "a quantidade máxima permitida é 10"

    Scenario: Limpando Configurações
        When eu preencher as configurações
        And clicar em limpar
        Then as configurações do produto devem voltar ao estado original

    Scenario: Compra bem sucedida
        When eu selecionar todas as configurações do meu produto
        And clicar em comprar
        Then o produto deve ser encaminhado para o carrinho