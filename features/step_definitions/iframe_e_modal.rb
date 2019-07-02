Quando("entro no modal iframe e preencho os campos") do
    visit('/mudancadefoco/iframe')
    within_frame('id_do_iframe')do
    #iremos fazer as ações dentro do iframe
    fill_in(id: 'first_name', with: 'Misael')
    fill_in(id: 'last_name', with: 'Qa')
    fill_in(id: 'password', with: '123456')
    end
end
  
Quando("entro no modal e verifico o texto") do
    visit('/mudancadefoco/modal')
    find('a[href="#modal1"]').click

    within('#modal1')do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        find('.modal-close').click
    end
end
  