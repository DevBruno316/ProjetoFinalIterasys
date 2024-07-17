*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${search-bar-home}    id=txtDsKeyWord
${search-button-home}    id=btnSearch

*** Keywords ***


Pesquisar Produto e clicar em pesquisar
    [Arguments]    ${search_name}
    Input Text    ${search-bar-home}    ${search_name}
    Click Element    ${search-button-home}