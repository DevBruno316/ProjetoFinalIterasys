*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${title}    div#divLogo h1

*** Keywords ***
Checar Titulo
    Element Should Be Visible    ${title}

Pesquisar Produto
    [Arguments]    ${search_name}
    Input Text    id=txtDsKeyWord    ${search_name}
    Click Element    id=btnSearch