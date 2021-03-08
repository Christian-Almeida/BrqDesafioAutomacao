 
  Quando("aceito os termos de serviço") do
    @Finalizar.aceitar_termos
    @botao.botao_address
  end
  
  Quando("checko o valor total da compra de {string}") do |expect_valorTotal|
    expect(@Finalizar.valida_totalPreco).to eql expect_valorTotal
  end
  
  Quando("escolho um metodo de pagamento") do
    @Finalizar.metodo_pagamento
  end
  
  Entao("devo Finalizar a compra e ver {string}") do |expect_textoConfirma|
    @botao.botao_confirm
    expect(@Finalizar.valida_texto).to eql expect_textoConfirma
  end