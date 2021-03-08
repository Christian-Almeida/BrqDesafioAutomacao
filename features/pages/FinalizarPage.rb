class FinzalizarCompra

    include Capybara::DSL

    def aceitar_termos
        locPage = find('#center_column') 
        page.execute_script("arguments[0].scrollIntoView();", locPage)
        find(:css,'#cgv[value="1"]').set(true)
    end

    def valida_totalPreco
        find('#total_price_container').text
    end

    def metodo_pagamento
        find("a[title*='Pay by bank wire']").click
    end

    def valida_texto
        find('.navigation_page').text
    end
end