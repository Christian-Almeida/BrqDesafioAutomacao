#language:pt
#enconding: UTF-8

@compraRealizada
Funcionalidade: Compra Realizada com Sucesso

    Sendo um usuario no site
    pretendendo fazer uma compra
    adicionando produto no carrinho

    @adicionaCar
    Cenario: Adicionado com Sucesso
      Dado que esteja na home da pagina
      Quando escolho um produto e o adiciono ao carrinho
      E vejo "Product successfully added to your shopping cart"
      E depos vejo "Your shopping cart"


    @cadastro_user
    Esquema do Cenario: Cadastro de Usuário
      Dado que estou no carrinho de compras e prossigo
      Quando eu crio um uma conta e preencho com meus <dados>
      E devo ir para a pagina contendo "Addresses"
      Quando aceito os termos de serviço
      E checko o valor total da compra de "$29.00"
      E escolho um metodo de pagamento
      Entao devo Finalizar a compra e ver "Order confirmation"

      Exemplos:
        | dados       |
        |"Jon Snow"   |



