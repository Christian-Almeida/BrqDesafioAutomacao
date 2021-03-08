class PaginaChekout
    include Capybara::DSL


    def validaTexto_CheckOut(textoEsperado)
        find(".navigation_page",text:textoEsperado).text
    end


end