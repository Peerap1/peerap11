*** Settings ***
Library     AppiumLibrary


*** Variables ***
${TRUECARD}    com.truecorp.sdk.test.userpanel:id/cardTypeImage

${FRONTCARD}    com.truecorp.sdk.test.userpanel:id/frontCardImage
${FRONTCARD_BUTTON}    com.truecorp.sdk.test.userpanel:id/iconImage

${BACKCARD_BUTTON}    com.truecorp.sdk.test.userpanel:id/iconImage
${BACKCARD}    com.truecorp.sdk.test.userpanel:id/backCardImage

${CLOSE_TRUECARD}    com.truecorp.sdk.test.userpanel:id/closeImageView
${CARD_INFORMATION}    xpath=//*[@text="Card Information"]
${TIMESTAMP}    com.truecorp.sdk.test.userpanel:id/timeStampTextView

${CARD_HOLDER}    com.truecorp.sdk.test.userpanel:id/cardHolderTextView
${CARD_NO}    com.truecorp.sdk.test.userpanel:id/cardNoTextView
${CLOSE_INFORMATION}    com.truecorp.sdk.test.userpanel:id/btnClose
*** Keywords ***

Show TrueCard on TopBar
    wait until page contains element    ${TRUECARD}


Click TrueCard
    Wait and Click Element    ${TRUECARD}

Verify TrueCard
    wait until page contains element    ${FRONTCARD}
    wait until page contains element    ${FRONTCARD_BUTTON}
    wait until page contains element    ${CLOSE_TRUECARD}
    wait until page contains element    ${CARD_INFORMATION}
    wait until page contains element    ${TIMESTAMP}

switch back and font TrueCard
    click element    ${FRONTCARD_BUTTON}
    wait until page contains element    ${BACKCARD}
    wait until page contains element    ${BACKCARD_BUTTON}
    click element    ${BACKCARD_BUTTON}

Click Card Information
    Wait and Click Element    ${CARD_INFORMATION}

Verify Card Information
    wait until page contains element    ${CARD_HOLDER}
    get text  ${CARD_HOLDER}
    wait until page contains element    ${CARD_NO}
    get text    ${CARD_NO}
    wait until page contains element    ${CLOSE_INFORMATION}

Close Card Information
    Wait and Click Element    ${CLOSE_INFORMATION}

Close TrueCard
    Wait and Click Element    ${CLOSE_TRUECARD}