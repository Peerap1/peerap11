*** Settings ***
Library     AppiumLibrary


*** Variables ***
${HEADER_TEXT}    xpath=//*[@text="Be in control of your True accounts"]
${REGISTER_LINK}    xpath=//*[@text="here"]
${TODAYNEWRELEASES_HEADER}    xpath=//*[@text="Today’s New Releases"]


${BACK_BUTTON}    xpath=//*[@resource-id="com.truecorp.sdk.test.userpanel:id/btnClose"]
${USERNAME_TEXTFIELD}    xpath=//android.view.View[@resource-id="home"]/android.view.View[@index="1"]/android.widget.EditText
${PASSWORD_TEXTFIELD}    xpath=//*[@resource-id="password"]

${SUBMIT_BUTTON}        xpath=//android.view.View[@resource-id="home"]//*[@resource-id="bt_signin"]

${LOGIN_TEXT}       xpath=//android.view.View[@text="Log In"]
${USERNAME_TEXT}    //android.view.View[@resource-id="home"][1]//*[@text='Username']
${PASSWORD_TEXT}    //android.view.View[@resource-id="home"][1]//*[@text='Password']

${FORGOTPASS_LINK}    xpath=//android.view.View[@resource-id="linkforgotpwd"]
${SINGUP_TEXT}        xpath=//android.view.View[@resource-id="linkregister"]



*** Keywords ***

Verify No Login My Accounts Page
    wait until page contains element    ${HEADER_TEXT}
    wait until page contains element    ${REGISTER_LINK}
    wait until page contains element    ${LOGIN_BUTTON}


Search Shelf Today’s New Releases
    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${TODAYNEWRELEASES_HEADER}    timeout=1s
    :FOR    ${index}    IN RANGE    1    3
    \    log    ${index}
    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${TODAYNEWRELEASES_HEADER}    timeout=1s
    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
    \    Swipe    600    1500    600    500    3000
    Run Keyword Unless    ${found}    Fail Shelf Today’s New Releases not found





