Quando("eu clico em links e botões") do
    visit('/')
    click_on('Começar Automação Web') #clicando em link ou botão
    visit('/buscaelementos/botoes')
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"]').click
    #duplo clique
    find('a[onclick="ativaedesativa2()"]').double_click
    #clicar com o botão direito
    find('a[onclick="ativaedesativa3()"]').right_click
    visit('/')
    click_link('Github')
    sleep 5
end