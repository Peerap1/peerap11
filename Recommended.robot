*** Settings ***
Library     AppiumLibrary

*** Variables ***
${RECOMMENDED_HEADER}    xpath=//*[@text="Recommended"]
${RECOMMENDED_ITEM}      xpath=//android.support.v7.widget.RecyclerView[@resource-id="com.truecorp.sdk.test.userpanel:id/recycleViewHighlightDeals"]
                         ...    //*[@resource-id="com.truecorp.sdk.test.userpanel:id/titleTextView"]
${RECOMMENDED_IMAGE}      xpath=//android.support.v7.widget.RecyclerView[@resource-id="com.truecorp.sdk.test.userpanel:id/recycleViewHighlightDeals"]
                         ...    //*[@resource-id="com.truecorp.sdk.test.userpanel:id/thumbImage"]
${RECOMMENDED_REDEEM}    xpath=//*[@text="DairyQueen"]

#Redeem Success
${RECOMMENDED_REDEEM_SUCCESS_TEXT}    xpath=//*[@text="Your redeem code will also be sent to your SMS & E-mail"]
${RECOMMENDED_PROMO_CODE}    com.truecorp.sdk.test.userpanel:id/promoCodeTv
${RECOMMENDED_PRACODE}    xpath=//*[@resource-id="com.truecorp.sdk.test.userpanel:id/tabLayoutGeneratorCode"]//*[@class="android.support.v7.app.ActionBar$Tab"][2]
${RECOMMENDED_PRACODE_IMAGE}    com.truecorp.sdk.test.userpanel:id/generatorImage
${RECOMMENDED_PRACODE_NUMBER}    com.truecorp.sdk.test.userpanel:id/numberCodeTv
${RECOMMENDED_QRCODE}    xpath=//*[@resource-id="com.truecorp.sdk.test.userpanel:id/tabLayoutGeneratorCode"]//*[@class="android.support.v7.app.ActionBar$Tab"][3]
${RECOMMENDED_QRCODE_IMAGE}    com.truecorp.sdk.test.userpanel:id/generatorImage

#Detail
${RECOMMENDED_IMAGE_DETAIL}    com.truecorp.sdk.test.userpanel:id/bannerImage
${RECOMMENDED_TITLE_DETAIL}    com.truecorp.sdk.test.userpanel:id/titleTextView
${RECOMMENDED_DETAIL}    com.truecorp.sdk.test.userpanel:id/titleDetailTextView
${RECOMMENDED_TYPECARD_IMAGE}    com.truecorp.sdk.test.userpanel:id/typeCardImage
${RECOMMENDED_TYPECARD_TEXT}    com.truecorp.sdk.test.userpanel:id/typeCardTextView
${RECOMMENDED_REDEEM_BUTTON}    com.truecorp.sdk.test.userpanel:id/constraintLayout
${RECOMMENDED_ARROW_RIGHT}    com.truecorp.sdk.test.userpanel:id/arrowRightFrameLayout

*** Keywords ***

Search Shelf Recommended
    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${RECOMMENDED_HEADER}    timeout=1s
    :FOR    ${index}    IN RANGE    1    5
    \    log    ${index}
    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${RECOMMENDED_HEADER}    timeout=1s
    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
    \    Swipe    600    1500    600    500    3000
    Run Keyword Unless    ${found}    Fail Shelf 7Coupons not found

Search Item In Shelf Recommended
    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${RECOMMENDED_ITEM}    timeout=1s
    :FOR    ${index}    IN RANGE    1    10
    \    log    ${index}
    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${RECOMMENDED_ITEM}    timeout=1s
    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
    \    Swipe    600    1500    600    500    3000
    Get Text    ${RECOMMENDED_ITEM}
    Run Keyword Unless    ${found}    Fail Item In Shelf 7Coupons not found

Click Item In Shelf Recommended
    Wait and click element    ${RECOMMENDED_ITEM}

Click Recommended
    Wait and click element    ${RECOMMENDED_REDEEM}

Verify Recommended list
    wait until page contains element    ${RECOMMENDED_HEADER}
    get text    ${RECOMMENDED_HEADER}
    wait until page contains element    ${RECOMMENDED_ITEM}
    wait until page contains element    ${RECOMMENDED_IMAGE}

Verify Recommended Detail
    wait until page contains element    ${RECOMMENDED_IMAGE_DETAIL}    ${TimeOut}
    wait until page contains element    ${RECOMMENDED_TITLE_DETAIL}
    get text    ${RECOMMENDED_TITLE_DETAIL}
    wait until page contains element    ${RECOMMENDED_DETAIL}
    get text    ${RECOMMENDED_DETAIL}
    wait until page contains element    ${RECOMMENDED_TYPECARD_IMAGE}
    wait until page contains element    ${RECOMMENDED_TYPECARD_TEXT}
    get text    ${RECOMMENDED_TYPECARD_TEXT}
    wait until page contains element    ${RECOMMENDED_REDEEM_BUTTON}
    get text    ${RECOMMENDED_REDEEM_BUTTON}
    wait until page contains element    ${RECOMMENDED_ARROW_RIGHT}

#Search Privilege In Shelf Recommended and Redeem
#    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${REDEEM_BUTTON}    timeout=1s
#    :FOR    ${index}    IN RANGE    1    10
#    \    log    ${index}
#    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${REDEEM_BUTTON}    timeout=1s
#    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
#    \    wait and click element    ${RECOMMENDED_ARROW_RIGHT}
#    Run Keyword Unless    ${found}    Fail Redeem Privilege In Shelf Recommended

Verify Redeem Recommended success
    wait until page contains element    ${RECOMMENDED_REDEEM_SUCCESS_TEXT}    ${TimeOut}
    wait until page contains element    ${RECOMMENDED_PROMO_CODE}
    get text    ${RECOMMENDED_PROMO_CODE}
    wait and click element    ${RECOMMENDED_PRACODE}
    wait until page contains element    ${RECOMMENDED_PRACODE_IMAGE}
    wait until page contains element    ${RECOMMENDED_PRACODE_NUMBER}
    get text    ${RECOMMENDED_PRACODE_NUMBER}
    wait and click element    ${RECOMMENDED_QRCODE}
    wait until page contains element    ${RECOMMENDED_QRCODE_IMAGE}

Click arrow right in Privilege detail
    wait and click element    ${RECOMMENDED_ARROW_RIGHT}



#ติด bar code ยัง run ไม่ได้ ตอนเปลี่ยนไปใช่อีก path