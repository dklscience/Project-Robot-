## Projeto teste de Automação - Pesquisar Produto no Site Automation Practice em Robot 

Projeto simples contendo as telas: 
 - 
 
### O Teste
#### Tarefas a serem realizadas:
 - Elaborar testes automatizados utilizando a ferramenta ROBOT
 - Utilizar o navegador Chrome
 - Utilizar o padrão Bdd com a ferramenta Cucumber
 - Fazer upload do projeto no repositório público GitHub

 
 ### Test Case


Caso de Teste 01: Pesquisar produto existente
  Dado que estou na pagina home do site
  Quando eu pesquisar pelo produto "Blouse"
  Então o produto "Blouse" deve ser listado na pagina de resultado na busca


Caso de Teste 02: Pesquisar produto não existente
  Dado que estou na pagina home do site
  Quando eu pesquisar pelo produto "ItemNãoExistente"
  Então a pagina deve exibir a mensagem "No results were found for your search "ItemNãoExistente"


  
 ### Dados para teste 
  - Site http:http://automationpractice.com



 ### Telas
 
Tela Inicial                               | Tela Item Existente |Tela Item Inexistente |
  :----------------------------------------:|:--------------
  ![](https://github.com/dklscience/Project-Robot-/blob/main/Ruby%20Robot/Screens/PaginaInicial.PNG.png)  |![](https://github.com/dklscience/Project-Robot-/blob/main/Ruby%20Robot/Screens/PesquisaItemExist.PNG)  |![](https://github.com/dklscience/Project-Robot-/blob/main/Ruby%20Robot/Screens/ItemInexist.PNG)  |


