Quando("eu clico em um botão") do
    visit('/buscaelementos/botoes')
    find('#teste').click
end
  
Então("verifico se o texto desapareceu da tela.") do
    # @texto = find('#div1')
    #expect(@texto.text).to eql 'Você Clicou no Botão!'
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    #elemento invisível
    find('#teste').click
    sleep(3)
    assert_no_text(text, 'Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
    sleep(3)
end