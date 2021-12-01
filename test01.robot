*** Settings ***
Library           AppiumLibrary

*** Variables ***
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}
${ANDROID_APP}                ${CURDIR}/app/APIDemos.apk


*** Test Cases ***
Open application via emulator Animation/Cloning
    Open Application   http://127.0.0.1:4723/wd/hub  platformName=${ANDROID_PLATFORM_NAME}   deviceName="emulator-5554"  platformVersion=${ANDROID_PLATFORM_VERSION}  app=${ANDROID_APP}  
    Click Element	android:id/button1
    Click Text	    Animation
    click Text      Cloning
    Click Element   com.hmh.api:id/startButton
    Sleep   3
    Close Application

Open application via emulator Animation/Default Layout Animations
    Open Application   http://127.0.0.1:4723/wd/hub  platformName=${ANDROID_PLATFORM_NAME}   deviceName="emulator-5554"  platformVersion=${ANDROID_PLATFORM_VERSION}  app=${ANDROID_APP} 
    Click Element	android:id/button1
    Click Text	    Animation
    Click Text      Default Layout Animations
    Click Element   com.hmh.api:id/addNewButton
    Sleep   1
    Click Element   com.hmh.api:id/addNewButton
    Sleep   1
    Click Element   com.hmh.api:id/addNewButton
    Sleep   1
    Close Application 