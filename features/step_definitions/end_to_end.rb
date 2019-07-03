Quando("eu cadastro o usuário") do
    visit('/users/new')
    fill_in(id: 'user_name', with: 'Misael')
    find('#user_lastname').set('Reis')
    fill_in(id: 'user_email', with: 'misael.qa@email.com')
    find('input[value="Criar"]').click
end
  
Então("verifico se o usuário foi cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end
  
Quando("edito um usuário") do
    sleep(3)
    find('.btn.waves-light.blue').click
    sleep(3)
end
  
Então("verifico se o usuário foi editado") do
end