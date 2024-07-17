*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${pop-up-CEP}    css=div.close-button
${product-name-search-result}    css=h2.title-item
${product-price-search-result}    css=span.actual-price

*** Keywords ***
Fechar pop-up do CEP no resultado da pesquisa
    Click Element    ${pop-up-CEP}

Checar se o produto apresentado é o mesmo a pesquisa
    [Arguments]    ${search_name}    ${price}
    Element Text Should Be    ${product-name-search-result}    ${search_name}
    Element Text Should Be    ${product-price-search-result}    ${price}
Clicar no produto pesquisado
    Click Element    ${product-name-search-result}
