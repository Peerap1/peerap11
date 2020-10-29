*** Settings ***
Library  AppiumLibrary
Resource    ./common.robot
Resource    ./Desirecapability.robot


*** Test Cases ***

Open Android app
    Open Application    ${REMOTE_URL}    platformName=${PLATFORMNAME}    platformVersion=${PLATFORMVERSION}
    ...    deviceName=${DEVICENAME}    app=${APP_APK}    appPackage=${APPNAME}