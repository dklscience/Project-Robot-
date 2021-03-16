*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Url} 		      http://automationpractice.com
${BROWSER}  		chrome


*** Keywords ***
### Setup e TEARDOWN
Abrir navegador
  Open Browser    about:blank    ${BROWSER}

Fechar navegador
    Close Browser

### Açoes
Acessar a página home do site
    Go To      http://automationpractice.com
    Title Should Be      My Store

Digitar o nome do produto “${PRODUTO}” no campo de pesquisa
    Input text  name=search_query       ${PRODUTO}

 Clicar no botão pesquisar
    Click Element       name=submit_search      

#### Conferências
Conferir se o produto “${PRODUTO}” foi listado no site
        Wait Until Element is Visible        css=#center_column > h1
        Title Should Be                      Search - My Store
        Page Should Contain Image            xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
        Page Should Contain Link            xpath=//*[@id="center_column"]//*[@class='product-name'][contains(text(),"Blouse")]

Conferir mensagem de erro "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible       //*[@id="center_column"]/p[@class="alert alert-warning"]      
    Element text Should Be      //*[@id="center_column"]/p[@class="alert alert-warning"]        ${MENSAGEM_ALERTA}






