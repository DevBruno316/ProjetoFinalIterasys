*** Settings ***
Library    AppiumLibrary
Library    BuiltIn
Test Teardown    Close Application

*** Variables ***
${SAUCE_ACCESS_KEY}    2cbc8eb9-885f-42d8-a44e-f159a15d25ed
${SAUCE_USERNAME}    oauth-brabrou117-c8b93
${REMOTE_URL}    https://${SAUCE_USERNAME}:${SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Test Cases ***
Consultar produto Giuliana Flores
    Open Application    ${REMOTE_URL}
    ...    platformName=Android
    ...    appium:platformVersion=9.0
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator
    ...    appium:deviceOrientation=portrait
    ...    appium:app=storage:filename=Giuliana Flores_2.0.56_APKPure.apk
    ...    appium:appPackage=br.com.giulianaflores.android
    ...    appium:appActivity=br.com.giulianaflores.android.MainActivity
    ...    browserName=    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}
    #...    sauce:options=[object Object]
    ...    appium:newCommandTimeout=${3600}
    ...    appium:connectHardwareKeyboard=${True}
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView  
    #//android.widget.Button[@text="GIUAPP20"]
    Click Element    xpath=//android.widget.TextView[@text="Pular"]
    Click Element    xpath=//android.widget.TextView[@text="Criar minha conta depois"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="NÃO, OBRIGADO"]    5000ms
    Click Element    xpath=//android.widget.TextView[@text="NÃO, OBRIGADO"]
    Click Element    xpath=//android.widget.EditText[@text="busque seu produto aqui"]
    Input Text     xpath=//android.widget.EditText[@text="busque seu produto aqui"]   Luxuosas Astromélias Coloridas no Vaso
    Element Text Should Be    xpath=//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"]    Luxuosas Astromélias Coloridas no Vaso
    Click Element    xpath=//android.widget.EditText[@text="Luxuosas Astromélias Coloridas no Vaso"]
    Click Element    xpath=//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"]
    
    Click Element    xpath=//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"]
    Wait Until Element Is Visible    xpath=(//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"])[2]
    Element Text Should Be     xpath=(//android.widget.TextView[@text="Luxuosas Astromélias Coloridas no Vaso"])[2]    Luxuosas Astromélias Coloridas no Vaso   
    Element Text Should Be    xpath=//android.widget.TextView[@text=" R$ 229,90"]    ${SPACE}R$ 229,90

    
    



