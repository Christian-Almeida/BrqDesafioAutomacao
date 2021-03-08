#Este Step Realiza a ação de adicionar um item no carrinho
Dado("que esteja na home da pagina") do
    @AddCarrinho.visitaPagina
end
  
Quando("escolho um produto e o adiciono ao carrinho") do
    @AddCarrinho.escolhe_item
end
  
Quando("vejo {string}") do |expec_textoValido|
   expect(@AddCarrinho.validaTexto(expec_textoValido)).to eql expec_textoValido
   @AddCarrinho.botao_prosseguir
end

Quando("depos vejo {string}") do |expect_textoPageCarr|
  expect(@pageCheckout.validaTexto_CheckOut(expect_textoPageCarr)).to eql expect_textoPageCarr
  @botao.botao_proceed2
end

