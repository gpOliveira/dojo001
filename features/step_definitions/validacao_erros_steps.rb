Dado(/^que acesse a pagina de contato da Livelo$/) do
  visit 'http://www.livelo.com.br'
  find('.menutext.js-hover-menu', :text => 'Livelo').hover
  find('.Azul-', :text => 'Fale conosco').click
  browser = page.driver.browser
  browser.switch_to.frame("neoFrame")
  find('.controlEM').click
  end

Quando(/^preencher os campos "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |nome, email, cpf, mensagem, assunto|
 fill_in 'Name', :with => nome
 fill_in 'EMail', :with => email
 find('.inputBlock.formInput', :text => 'CPF').click
 fill_in 'FieldU', :with => cpf

 if assunto != ""
  find("option[value='#{assunto}']").click
 end
 
 fill_in 'question', :with => mensagem
 find('.searchButton').click 
end

Entao(/^uma mensagem de erro deve ser exibida$/) do
assert_text('Ocorreu algum erro no envio de seu e-mail')
end