*** Settings ***
Library    AppiumLibrary

*** Variables ***
${campo_nome_produto_desc}    xpath=(//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"])[2]
${nome_produto_desc}    Luxuosas Astromélias Coloridas no Vaso
${campo_preco_produto_desc}   xpath=//android.widget.TextView[@text=" R$ 229,90"] 
${preco_produto_desc}    ${SPACE}R$ 229,90

*** Keywords ***
Checar se o produto continua o mesmo
    Wait Until Element Is Visible    ${campo_nome_produto_desc}
    Element Text Should Be     ${campo_nome_produto_desc}       ${nome_produto_desc}
    Element Text Should Be     ${campo_preco_produto_desc}   ${preco_produto_desc}
