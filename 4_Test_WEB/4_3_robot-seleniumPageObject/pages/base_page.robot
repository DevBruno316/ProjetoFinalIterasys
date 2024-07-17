*** Settings ***
Library    SeleniumLibrary
Library    DateTime

Resource    home_page.robot
Resource    search_result_page.robot
Resource    desc_product_page.robot

*** Variables ***
${timeout}    5000ms
${url}    https://www.giulianaflores.com.br/
${browser}    Chrome


*** Keywords ***

Abrir Navegador
    Open Browser    url=${url}    browser=${browser}
    Set Browser Implicit Wait    10000ms
    
Fechar Navegador
    Sleep    500ms
    Close Browser

