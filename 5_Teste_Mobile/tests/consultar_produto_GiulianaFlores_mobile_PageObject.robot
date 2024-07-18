*** Settings ***
Resource    ../pages/base_page.robot
Test Teardown    Fechar aplicacao

*** Test Cases ***
Consultar produto Giuliana Flores App
    Sleep    20000ms
    Abrir aplicacao
    Recusar cupom
    Pular Slides
    Login "Criar conta depois"
    Avaliar App "avaliar depois"
    Escrever "Luxuosas Astromélias Coloridas no Vaso" na barra de pesquisa
    Clicar no produto referente a pesquisa
    Checar se o produto continua o mesmo