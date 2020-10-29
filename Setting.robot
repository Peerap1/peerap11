*** Settings ***
Library     AppiumLibrary
Resource    ./CommonKeyword.robot
Resource    ./LoginPage.robot

*** Variables ***
${FORCE_POINT}    com.truecorp.sdk.test.userpanel:id/btnForceGetTruePoint
${OPEN_TOPBAR}    com.truecorp.sdk.test.userpanel:id/viewAction
${CLOSE_TOPBAR}    com.truecorp.sdk.test.userpanel:id/btnClose
${MYACCOUNYS_TAB}    xpath=//android.widget.TextView[@text="My Accounts"]
${EASYREDEEM_TAB}    xpath=//android.widget.TextView[@text="Easy Redeem"]
${USE_TRUEPOINT}    com.truecorp.sdk.test.userpanel:id/radioBurn
${EARN_TRUEPOINT}    com.truecorp.sdk.test.userpanel:id/radioEarn
${POINT_CLIENT}    com.truecorp.sdk.test.userpanel:id/pointTv
${LOGOUT_BUTTON}    com.truecorp.sdk.test.userpanel:id/btnLogout
${LOGIN_BUTTON}    com.truecorp.sdk.test.userpanel:id/loginSSOTextView

${CLIENT_ID}    com.truecorp.sdk.test.userpanel:id/editTextClientId
${DEV}    com.truecorp.sdk.test.userpanel:id/stagingBtn
${PROD}    com.truecorp.sdk.test.userpanel:id/productionBtn

${ADS}    aw0

*** Keywords ***

Select Env Dev
    wait until page contains element    ${CLIENT_ID}
    input text    ${CLIENT_ID}    213
    click element    ${DEV}

Open TopBar
    wait until page contains element    ${OPEN_TOPBAR}
    click element    ${OPEN_TOPBAR}
    wait until page contains element   ${MYACCOUNYS_TAB}

Close TopBar
    wait until page contains element    ${CLOSE_TOPBAR}
    click element    ${CLOSE_TOPBAR}
    wait until page contains element   ${FORCE_POINT}

Click Force Point
    Wait and Click Element    ${FORCE_POINT}
    wait until page contains element    ${POINT_CLIENT}    ${timeout}

Wait Ads in TopBar
    wait mobile until page contains element    ${ADS}    ${timeout}

Go To My Accounts Tab
    Wait and Click Element   ${MYACCOUNYS_TAB}
    Wait Ads in TopBar

Go To Easy Redeem Tab
    Wait and Click Element    ${EASYREDEEM_TAB}
    Wait Ads in TopBar

Go To Use TruePoint Tab
    Wait and Click Element    ${EASYREDEEM_TAB}
    Wait and Click Element    ${USE_TRUEPOINT}

Go To Earn TruePoint Tab
    Wait and Click Element    ${EASYREDEEM_TAB}
    Wait and Click Element    ${EARN_TRUEPOINT}

Click Logout
    Wait and Click Element    ${LOGOUT_BUTTON}
    sleep    2s
    Page Should Not Contain Element    ${LOGOUT_BUTTON}

Click Login
    Wait and Click Element    ${LOGIN_BUTTON}

Open TopBar To Login
    Open TopBar
    Go To My Accounts Tab
    Click Login

Login With User No TruePoint
    Open TopBar To Login
    LoginPage.Verify Login Page
    Input Text    ${USERNAME_TEXTFIELD}    ${USER_NOPOINT}
    Run Keyword and Ignore Error    Hide Keyboard
    Input Text    ${PASSWORD_TEXTFIELD}    ${PASSWORD_NOPOINT}
    Run Keyword and Ignore Error    Hide Keyboard
    Click Element    ${SUBMIT_BUTTON}
    wait until page contains element    ${LOGOUT_BUTTON}    ${TimeOut}
    Click Force Point

Login With User No MappingThaiID
    Open TopBar To Login
    LoginPage.Verify Login Page
    Input Text    ${USERNAME_TEXTFIELD}    ${USER_NOMAPPINGTHAIID}
    Run Keyword and Ignore Error    Hide Keyboard
    Input Text    ${PASSWORD_TEXTFIELD}    ${PASSWORD_NOMAPPINGTHAIID}
    Run Keyword and Ignore Error    Hide Keyboard
    Click Element    ${SUBMIT_BUTTON}
    wait until page contains element    ${LOGOUT_BUTTON}    ${TimeOut}


Login With User True Card
    Open TopBar To Login
    LoginPage.Verify Login Page
    Input Text    ${USERNAME_TEXTFIELD}    ${USER_TRUECARD}
#    Run Keyword and Ignore Error    Hide Keyboard
    Input Text    ${PASSWORD_TEXTFIELD}    ${PASSWORD_TRUECARD}
#    Run Keyword and Ignore Error    Hide Keyboard
    Click Element    ${SUBMIT_BUTTON}
    wait until page contains element    ${LOGOUT_BUTTON}    ${TimeOut}
    Click Force Point

Login With User Test True Card
    Open TopBar To Login
    LoginPage.Verify Login Page
    Input Text    ${USERNAME_TEXTFIELD}    ${USER_TEST_TRUECARD}
    Run Keyword and Ignore Error    Hide Keyboard
    Input Text    ${PASSWORD_TEXTFIELD}    ${PASSWORD_TEST_TRUECARD}
    Run Keyword and Ignore Error    Hide Keyboard
    Click Element    ${SUBMIT_BUTTON}
    wait until page contains element    ${LOGOUT_BUTTON}    ${TimeOut}
    Click Force Point