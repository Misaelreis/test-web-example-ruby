Quando("eu faço um cadastro") do
    visit('/users/new')
    fill_in(id: 'user_name', with: 'Misael')
    find('#user_lastname').set('Reis')
    find('#user_email').send_keys('zael.qa@gmail.com')
    fill_in(id: 'user_address', with: 'Belo Horizonte')
    fill_in(id: 'user_university', with: 'PUC')
    fill_in(id: 'user_profile', with: 'Qa')
    fill_in(id: 'user_gender', with: 'Masculino')
    fill_in(id: 'user_age', with: '21')
    find('input[value="Criar"]').click
    sleep 5
end

Então("Verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end