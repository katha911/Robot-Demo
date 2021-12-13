*** Settings ***
Library           AppiumLibrary

*** Variables ***
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}
${ANDROID_APP}                ${CURDIR}/app/app-release.apk

*** Test Cases ***
Open application via emulator arbotena_test
    Open Application    http://127.0.0.1:4723/wd/hub  platformName=${ANDROID_PLATFORM_NAME}   deviceName="emulator-5554"  platformVersion=${ANDROID_PLATFORM_VERSION}  app=${ANDROID_APP} 
    Sleep   3
    Click Text                  Account anlegen   
    Page Should Contain Text    Einloggen
    Wait Until Page Contains    E-Mail-Adresse
    Input Text    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText     Test
    Wait Until Page Contains    Passwort
    Wait Until Page Contains    Passwort bestätigen
    Click Element               xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.View