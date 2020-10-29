*** Settings ***
Library     AppiumLibrary


*** Variables ***
#
${REDEEM_BUTTON}    xpath=//*[@text="Redeem"]
${DONE_BUTTON}    xpath=//*[@text="Done"]

#Earn
${OK_BUTTON}    xpath=//*[@text="OK"]
${EARN_TRUEPOINT_BUTTON}    xpath=//*[@text="Earn TruePoint"]
${EARN_TEXT}    xpath=//*[@text="You don’t have enough TruePoint, Please select another coupon"]

#noMap
${CONFIRM_BUTTON}    xpath=//*[@text="Confirm"]
${CANCEL_BUTTON}    xpath=//*[@text="Cancel"]
${NOMAP_TEXT}    xpath=//*[@text="Please identify True services you are using to complete the redemption"]
${NOMAP_WEB_VIEW}    com.truecorp.sdk.test.userpanel:id/buttonClose



*** Keywords ***

Click Redeem Button
    wait and click element    ${REDEEM_BUTTON}

Verify Don’t have enough TruePoint dialog message
    wait until page contains element    ${EARN_TEXT}
    wait until page contains element    ${EARN_TRUEPOINT_BUTTON}
    wait until page contains element    ${OK_BUTTON}

Click Earn TruePoint Button
    wait and click element    ${EARN_TRUEPOINT_BUTTON}
Click OK Button
    wait and click element    ${OK_BUTTON}

Verify No MappingThaiID dialog message
    wait until page contains element    ${NOMAP_TEXT}
    wait until page contains element    ${CONFIRM_BUTTON}
    wait until page contains element    ${CANCEL_BUTTON}

Verify No MappingThaiID Web View
    wait until page contains element    ${NOMAP_WEB_VIEW}    ${TimeOut}

Click Confirm Button
    wait and click element    ${CONFIRM_BUTTON}
Click Close Button
    wait and click element    ${CANCEL_BUTTON}

