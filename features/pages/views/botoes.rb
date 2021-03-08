# frozen_string_literal: true

#Classe Auxiliar para mapear alguns botões e ajudar a diminuir a complexidade e legibilidade da classe CadastroConta
class Botoes
    include Capybara::DSL
  
    def botao_criar_conta
      click_button 'Create an account'
      sleep 3
    end
  
    def botao_registrar
      click_button 'Register'
      sleep 5
    end

    def botao_proceed2
      locPage = find('#center_column') 
      page.execute_script("arguments[0].scrollIntoView();", locPage)
      find("#center_column p a",text:'Proceed to checkout').click
    end
    
    def botao_proceed3
      locPage = find('#center_column #ordermsg') 
      page.execute_script("arguments[0].scrollIntoView();", locPage)
      find("#center_column p button",text:'Proceed to checkout').click
    end
    

  def botao_address
    find('button[name*=processCarrier]').click
  end

  def botao_confirm
    find('button[class*=button-medium]').click
  end
end
  