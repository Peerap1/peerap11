*** Settings ***
Library     AppiumLibrary


*** Variables ***
${EARN_ITEM}    xpath=//*[@resource-id="com.truecorp.sdk.test.userpanel:id/textViewEarnTitle"]






*** Keywords ***
Click Item Earn True Point
    wait until page contains element    ${EARN_ITEM}
    click element    ${EARN_ITEM}

Verify Item Earn True Point
    wait until page contains element    ${EARN_ITEM}
