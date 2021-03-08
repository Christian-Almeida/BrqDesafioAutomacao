Dado("que estou no carrinho de compras e prossigo") do
    steps %{
        Dado que esteja na home da pagina
        Quando escolho um produto e o adiciono ao carrinho
        E vejo "Product successfully added to your shopping cart"
        E depos vejo "Your shopping cart"
    }
  end
  
  Quando("eu crio um uma conta e preencho com meus {string}") do |dado_code|
    file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/dadosUsuarios.yaml'))
    @dado = file[dado_code]
  
    @cadastroPage.inserir_email(@dado['email'])
    @botao.botao_criar_conta
  
    @cadastroPage.genero(@dado['Genero'])
  
    @cadastroPage.dados_pessoais(
                                 @dado['Nome'],
                                 @dado['Sobrenome'],
                                 @dado['password'])
  
    @cadastroPage.endereco(
                             @dado['Endereço'],
                             @dado['Cidade'],
                             @dado['PostalCode'],
                             @dado['MobilePhone'],
                             @dado['Alias'],
                             @dado['Estado'])
  
    @botao.botao_registrar
  
    
  end
  
  Entao("devo ir para a pagina contendo {string}") do |expect_texto|
    expect(@alertas.alertaSucesso).to eql expect_texto
    @botao.botao_proceed3
  end