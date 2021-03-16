***  Settings  ***
Import Library    SeleniumLibrary    

***  Variables ***
${Url} 		      http://automationpractice.com
${BROWSER}  		chrome


*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
  Dado que estou na pagina home do site
  Quando eu pesquisar pelo produto "Blouse"
  Então o produto "Blouse" deve ser listado na pagina de resultado na busca


Caso de Teste 02: Pesquisar produto não existente
  Dado que estou na pagina home do site
  Quando eu pesquisar pelo produto "ItemNãoExistente"
  Então a pagina deve exibir a mensagem "No results were found for your search "ItemNãoExistente"
