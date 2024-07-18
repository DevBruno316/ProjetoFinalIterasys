*** Settings ***
Library    AppiumLibrary

*** Variables ***
${barra_pesquisa_search}    xpath=//android.widget.EditText[@text="busque seu produto aqui"]
${nome_produto_search}    Luxuosas Astromélias Coloridas no Vaso
${clique_barra_pesquisa_search}    xpath=//android.widget.EditText[@text="Luxuosas Astromélias Coloridas no Vaso"]
${produto_pesquisado_search}    xpath=//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"]

*** Keywords ***

Escrever "Luxuosas Astromélias Coloridas no Vaso" na barra de pesquisa
    Click Element    ${barra_pesquisa_search}
    Input Text     ${barra_pesquisa_search}   ${nome_produto_search}
    Element Text Should Be    ${clique_barra_pesquisa_search}    ${nome_produto_search}

Clicar no produto referente a pesquisa
    Click Element    ${clique_barra_pesquisa_search}

    Click Element    ${produto_pesquisado_search}
    
    Click Element    ${produto_pesquisado_search}