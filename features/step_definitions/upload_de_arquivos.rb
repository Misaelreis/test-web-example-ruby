Quando("eu faço upload de arquivo") do
    visit('/outros/uploaddearquivos')
    #opção1
    #attach_file('upload', '/Users/misaelcandido/Documents/Projetos/automacao_web_bdd_cucumber/features/support/img.png', make_visible: true)
    sleep(2)

    #opção2
    @foto = File.join(Dir.pwd, '/features/support/img.png')
    attach_file('upload', @foto, make_visible: true)
    sleep(2)
end