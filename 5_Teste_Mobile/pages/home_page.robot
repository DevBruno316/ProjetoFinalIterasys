*** Settings ***
Library    AppiumLibrary

*** Variables ***
${recusar_cupom_home}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView
${pular_slides_home}    xpath=//android.widget.TextView[@text="Pular"]
${criar_conta_depois_home}    xpath=//android.widget.TextView[@text="Criar minha conta depois"]
${avaliar_depois_home}    xpath=//android.widget.TextView[@text="NÃO, OBRIGADO"]

*** Keywords ***

Recusar cupom
    Click Element      ${recusar_cupom_home}
    #//android.widget.Button[@text="GIUAPP20"]
Pular Slides
    Click Element    ${pular_slides_home}
Login "Criar conta depois"
    Click Element    ${criar_conta_depois_home}

Avaliar App "avaliar depois"
    Wait Until Element Is Visible    ${avaliar_depois_home}    5000ms
    Click Element    ${avaliar_depois_home}