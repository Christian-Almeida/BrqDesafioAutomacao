# frozen_string_literal: true
class AdicionarCarrinho
    include Capybara::DSL
  
    def visitaPagina
        visit "/"
    end

    def escolhe_item
        item = find("ul li[class*=last-item-of-mobile-line] img[alt='Blouse']")
        page.execute_script("arguments[0].scrollIntoView();", item)
        item.hover
        botao = find(:xpath,'//*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[1]', text:"Add to cart")
        botao.click
        
    end
    
    def validaTexto(textoEsperado)
        find(".clearfix h2", text:textoEsperado).text
    end

    def botao_prosseguir    
        find("a[title='Proceed to checkout']").click
    end
  
end  