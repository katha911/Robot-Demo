*** Settings ***
Resource          ../../../common.robot

*** Keywords ***
Open arbotena application 
    Open Application    http://127.0.0.1:4723/wd/hub  platformName=${ANDROID_PLATFORM_NAME}   deviceName="emulator-5554"  platformVersion=${ANDROID_PLATFORM_VERSION}  app=${ANDROID_APP} 
    Sleep   3