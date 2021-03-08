# frozen_string_literal: true

class Alertas
    include Capybara::DSL
  
  
    def alertaSucesso
      find('.page-heading').text
    end
  
  end
  