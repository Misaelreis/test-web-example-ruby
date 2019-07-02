Quando("eu interagir com o dropdown e select") do
    visit('/buscaelementos/dropdowneselect')
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    #select
    select 'Chrome', from: 'dropdown'
    find('option[value="2"]').select_option
    sleep (3)
    #autocomplete
    visit('/widgets/autocomplete')
    find('#autocomplete-input').set'Rio de Jane'
    find('ul', text: 'Rio de Janeiro').click
    sleep (3)
end
  
Quando("eu preencher o autocomplete") do
end