*** Settings ***
Library     AppiumLibrary
Resource    ./common.robot
Resource    ./Setting.robot


*** Variables ***
### Common Variables ###
${REMOTE_URL}       ${REMOTEURL_RESOURCE}
${PLATFORMVERSION}      ${PLATFORMVERSION_RESOURCE}
${PLATFORMNAME}     ${PLATFORMNAME_RESOURCE}
${DEVICENAME}      ${DEVICENAME_RESOURCE}
${APP_APK}    ${APP_RESOURCE}
${APPNAME}    ${APPNAME_RESOURCE}
### Element Variables ###
#${CLOSE_PACKAGE_BUTTON}		id=com.tdcm.trueidapp:id/universe_web_view_close_btn
#${CLOSE_POPUP_BUTTON}    	id=com.tdcm.trueidapp:id/close_button
#${NOT_SHOW_AGAIN_CHECK}    	id=com.tdcm.trueidapp:id/not_show_again_textview
#${LATER_SURVEY_BUTTON}    	id=com.tdcm.trueidapp:id/later_survey_button
#${PRIVACY_OK_BUTTON}		    id=android:id/button1

*** Keywords ***
Launch TopBar Application
    Open Application    ${REMOTE_URL}    platformName=${PLATFORMNAME}    platformVersion=${PLATFORMVERSION}
    ...    deviceName=${DEVICENAME}    app=${APP_APK}    appPackage=${APPNAME}
#    ...    automationName=uiautomator2    noReset=True    autoGrantPermissions=True    appWaitActivity=*.MainActivity
    Setting.Select Env Dev

Re-Launch TopBar Application AND Logout
    Open Application    ${REMOTE_URL}    platformName=${PLATFORMNAME}    platformVersion=${PLATFORMVERSION}
    ...    deviceName=${DEVICENAME}    app=${APP_APK}    appPackage=${APPNAME}
    ...    automationName=uiautomator2    noReset=True    autoGrantPermissions=True    appWaitActivity=*.MainActivity
    Setting.Click Logout






Launch TopBar Application AND Login No Point
    Launch TopBar Application
    Setting.Login With User No TruePoint

Launch TopBar Application AND Login No MappingThaiID
    Launch TopBar Application
    Setting.Login With User No MappingThaiID

Launch TopBar Application AND Login True Card
    Launch TopBar Application
    Setting.Login With User True Card

Launch TopBar Application AND Login True Card User Test
    Launch TopBar Application
    Setting.Login With User Test True Card


Launch TopBar Application AND Go To My Accounts
    Launch TopBar Application
    Setting.Open TopBar
    Setting.Go To My Accounts Tab

Launch TopBar Application AND Go To Use TruePoint Tab
    Launch TopBar Application
    Setting.Open TopBar
    Setting.Go To Use TruePoint Tab

Launch TopBar Application AND Go To Earn TruePoint Tab
    Launch TopBar Application
    Setting.Open TopBar
    Setting.Go To Earn TruePoint Tab