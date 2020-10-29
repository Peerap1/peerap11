#/Users/peerapoltapeng/Work/qa-sdk/TopBarSDK/Test/Sanity
#robot sanity.robot
#robot -d ../Results/Sanity ex.robot

*** Settings ***
Library  AppiumLibrary

*** Variables ***

${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME_ANDROID}    Android
${DEVICE_NAME_ANDROID}    Pixel XL API 27
${APP_ANDROID}    ${CURDIR}${/}app${/}TestUserPanel.apk.apk
${AUTOMATION_NAME}    appium


${FORCE_POINT}    com.truecorp.sdk.test.userpanel:id/btnForceGetTruePoint
${OPEN_TOPBAR}    com.truecorp.sdk.test.userpanel:id/viewAction
${CLOSE_TOPBAR}    com.truecorp.sdk.test.userpanel:id/btnForceGetTruePoint

${CLIENT_TEXBOX}    com.truecorp.sdk.test.userpanel:id/editTextClientId
${STAGING_BUTTON}   com.truecorp.sdk.test.userpanel:id/stagingBtn


*** Test Cases ***
Launch TopBar Application
    Open application    ${REMOTE_URL}    platformName=${PLATFORM_NAME_ANDROID}
    ...    deviceName=${DEVICE_NAME_ANDROID}
    ...    app=${APP_ANDROID}
    ...    automationName=${AUTOMATION_NAME}
#    ...    automationName=uiautomator2    noReset=True    autoGrantPermissions=True    appWaitActivity=*.MainActivity

#select env and client id
#    Wait Until Page Contains Element    ${CLIENT_TEXBOX}     10s
#    input text    ${CLIENT_TEXBOX}    213
#    Click Element    ${STAGING_BUTTON}


