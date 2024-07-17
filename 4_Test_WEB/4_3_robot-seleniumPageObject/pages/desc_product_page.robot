*** Settings ***
Library    SeleniumLibrary
Library    ../../../.venv/Lib/site-packages/robot/libraries/String.py

*** Variables ***
${product-name-desc}    id=ContentSite_lblProductDsName
${product-price-desc}    css=div.preco_prod span.precoPor_prod

*** Keywords ***
Checar nome do produto na pagina descricao
    [Arguments]    ${name}    
    ${name_upper}=    Convert To Upper Case    ${name}
    Element Text Should Be    ${product-name-desc}    ${name_upper}
    

Checar preço do produto na pagina descricao
    [Arguments]    ${price}
    Element Text Should Be    ${product-price-desc}    ${price}
