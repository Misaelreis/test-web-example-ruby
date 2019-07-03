Quando("eu entro na janela e verifico a mensagem") do
    visit('/mudancadefoco/janela')
    #janela recebe uma janela que foi aberta pelo linl
    janela = window_opened_by do
        click_link 'Clique aqui'
    end

    #Muda de foco para a janela
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        janela.close
        sleep(2)
    end

    #Segunda opção
        click_link 'Clique aqui'

        #mudando para a última aba
        switch_to_window windows.last
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        windows.last.close
        sleep(2)
end
  
Quando("eu entro no atert e verifico foco e ação") do
    visit('/mudancadefoco/alert')
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
    sleep(2)

    find('button[onclick="jsConfirm()"]').click
    sleep(2)
    #page.dismiss_confirm
    page.accept_confirm

    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Misael Qa')
    #page.dismiss_prompt(with: 'Misael Qa')
    sleep(2)
end