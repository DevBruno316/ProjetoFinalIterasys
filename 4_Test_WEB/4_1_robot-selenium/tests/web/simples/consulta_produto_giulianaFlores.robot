*** Settings ***
Library    SeleniumLibrary
Library    ../../../../.venv/Lib/site-packages/robot/libraries/String.py

Test Teardown    Close Browser

*** Variables ***
${url}    https://www.giulianaflores.com.br/
${browser}    Chrome
${timeout}    5000ms
${search_name}    Buquê Carinho de Rosas Pink
${search_price}    R$ 149,90
*** Test Cases ***
Consultar produto Giuliana Flores
    Open Browser    url=${url}    browser=${browser}
    Set Browser Implicit Wait    ${timeout}
    Wait Until Element Is Visible    id=divLogo    ${timeout}
    Input Text    id=txtDsKeyWord    ${search_name}
    Click Element    id=btnSearch
    Click Element    css=div.close-button
    Element Text Should Be    css=h2.title-item    ${search_name}
    Element Text Should Be    css=span.actual-price    ${search_price}
    Click Element    css=h2.title-item
    ${search_name_maisculo}=    Convert To Upper Case    ${search_name}
    Element Text Should Be    id=ContentSite_lblProductDsName    ${search_name_maisculo}
    Element Text Should Be    css=div.preco_prod span.precoPor_prod    ${search_price}

    


