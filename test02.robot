*** Settings ***
Library           AppiumLibrary

*** Variables ***
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}
${ANDROID_APP}                ${CURDIR}/app/APIDemos.apk


*** Test Cases ***
Open application via emulator Text/LogTextBox
    Open Application    http://127.0.0.1:4723/wd/hub  platformName=${ANDROID_PLATFORM_NAME}   deviceName="emulator-5554"  platformVersion=${ANDROID_PLATFORM_VERSION}  app=${ANDROID_APP}  
    Click Element	 android:id/button1
    Click Text	     Text
    click Element    xpath=/hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.ListView/android.widget.TextView[2]
    Element Name Should Be    com.hmh.api:id/add    Add
    Click Element    com.hmh.api:id/add
    Page Should Contain Text    This is a test
    Sleep   3
    Close Application