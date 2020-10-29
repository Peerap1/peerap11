*** Settings ***
Library     AppiumLibrary


*** Variables ***
${LOGIN_PAGE}         xpath=//*[@resource-id="loginbox"]
${BACK_BUTTON}    xpath=//*[@resource-id="com.truecorp.sdk.test.userpanel:id/btnClose"]
${USERNAME_TEXTFIELD}    xpath=//android.view.View[@resource-id="home"]/android.view.View[@index="1"]/android.widget.EditText
${PASSWORD_TEXTFIELD}    xpath=//*[@resource-id="password"]

${SUBMIT_BUTTON}        xpath=//android.view.View[@resource-id="home"]//*[@resource-id="bt_signin"]

${LOGIN_TEXT}       xpath=//android.view.View[@text="Log In"]
${USERNAME_TEXT}    //android.view.View[@resource-id="home"][1]//*[@text='Username']
${PASSWORD_TEXT}    //android.view.View[@resource-id="home"][1]//*[@text='Password']

${FORGOTPASS_LINK}    xpath=//android.view.View[@resource-id="linkforgotpwd"]
${SINGUP_TEXT}        xpath=//android.view.View[@resource-id="linkregister"]

${LOGIN_BUTTON}        xpath=//android.view.View[@text="linkregister"]

*** Keywords ***

Verify Login Page
    wait until page contains element    ${LOGIN_PAGE}    ${TimeOut}
    wait until page contains element    ${BACK_BUTTON}
    wait until page contains element    ${USERNAME_TEXTFIELD}
    wait until page contains element    ${PASSWORD_TEXTFIELD}
    wait until page contains element    ${SUBMIT_BUTTON}
    wait until page contains element    ${FORGOTPASS_LINK}
    wait until page contains element    ${SINGUP_TEXT}





