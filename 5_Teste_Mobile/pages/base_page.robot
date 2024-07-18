*** Settings ***
Library    AppiumLibrary

Resource    home_page.robot
Resource    search_page.robot
Resource    desc_product_page.robot


*** Variables ***
${timeout}    5000ms
${SAUCE_ACCESS_KEY}    2cbc8eb9-885f-42d8-a44e-f159a15d25ed
${SAUCE_USERNAME}    oauth-brabrou117-c8b93
${REMOTE_URL}    https://${SAUCE_USERNAME}:${SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Keywords ***
Abrir aplicacao
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
    


Fechar aplicacao 
    Close Application
    
