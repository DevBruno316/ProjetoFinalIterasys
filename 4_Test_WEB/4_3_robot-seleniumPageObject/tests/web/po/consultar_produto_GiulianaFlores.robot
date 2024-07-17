*** Settings ***
Resource    ../../../pages/base_page.robot
Test Template    Pesquisar e validar Produto

*** Test Cases ***

Teste01    Buquê Partitura Girassol    R$ 59,90


*** Keywords ***

Pesquisar e validar Produto 
    [Arguments]    ${nome_produto}    ${preço_produto}
    
    Pesquisar Produto e clicar em pesquisar    ${nome_produto}
    Fechar pop-up do CEP no resultado da pesquisa
    Checar se o produto apresentado é o mesmo a pesquisa    ${nome_produto}    ${preço_produto}
    Clicar no produto pesquisado    
    Checar nome do produto na pagina descricao    ${nome_produto}
    Checar preço do produto na pagina descricao    ${preço_produto}