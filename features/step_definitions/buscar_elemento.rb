Quando("eu acesso a url de botões") do
    visit('/buscaelementos/botoes')
end
  
Então("eu verifico se encontrei todos os elementos") do
    sleep(3)
    #all busca todos os elementos que contém o all.
    page.all(:css, '.btn')
    #busca o elemento mapeado
    find('#teste')
    #busca pelo id
    find_by_id('teste')
    #busca pelo elemento esperado
    first('.btn')
    #busca por algum link
    find_link(href:'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end
  