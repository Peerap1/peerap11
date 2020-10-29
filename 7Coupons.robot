*** Settings ***
Library     AppiumLibrary


*** Variables ***
${7COUPOS_HEADER}    xpath=//*[@text="Free at 7-ELEVEN"]

#list
${7COUPOS_TITLE}     xpath=//*[@text="นิชชินซอง (แลกได้ 1 สิทธิ์/ ท่าน)"]
${7COUPOS_EXP}     xpath=//*[@text="23 Feb 2029"]
${7COUPOS_POINT}     xpath=//*[@text="10 pts"]

#Detail
${7COUPOS_IMAGE_DETAIL}    com.truecorp.sdk.test.userpanel:id/bannerImage
${7COUPOS_TITLE_DETAIL}    com.truecorp.sdk.test.userpanel:id/titleTextView
${7COUPOS_DETAIL}     com.truecorp.sdk.test.userpanel:id/detailTextView
${7COUPOS_YOURPOINT_TEXT}    xpath=//*[@text="Your TruePoint :"]
${7COUPOS_YOURPOINT}    com.truecorp.sdk.test.userpanel:id/yourNumberPointTextView
${7COUPOS_TRUEPOINT_TEXT}    xpath=//*[@text="Redeem for :"]
${7COUPOS_TRUEPOINT}    com.truecorp.sdk.test.userpanel:id/truePointTextView
${CLOSE_IMAGE}    com.truecorp.sdk.test.userpanel:id/imageClose

#Redeem
${7COUPOS_BANNER_IMAGE}    com.truecorp.sdk.test.userpanel:id/bannerImage
${7COUPOS_BARCODE_IMAGE}    com.truecorp.sdk.test.userpanel:id/barcodeImage
${7COUPOS_NUMBER_BARCODE}    com.truecorp.sdk.test.userpanel:id/numberBarcodeTv

${MYCOUPONS_BUTTON}    xpath=//*[@text="My Coupons"]
${CLOSE_BUTTON}    xpath=//*[@text="Close"]

#My 7-11
${MY_7_HEADER}    xpath=//*[@text="My 7-Eleven Coupons"]
${MY_7COUPON}    com.truecorp.sdk.test.userpanel:id/couponImageView
${MY_ADD_7COUPON}    com.truecorp.sdk.test.userpanel:id/addCouponText
${MY_BACK_BUTTON}    com.truecorp.sdk.test.userpanel:id/backImage


*** Keywords ***
Search Shelf 7Coupons
    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${7COUPOS_HEADER}    timeout=1s
    :FOR    ${index}    IN RANGE    1    10
    \    log    ${index}
    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${7COUPOS_HEADER}    timeout=1s
    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
    \    Swipe    600    1500    600    500    3000
    Run Keyword Unless    ${found}    Fail Shelf 7Coupons not found

Search Item In Shelf 7Coupons
    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${7COUPOS_TITLE}    timeout=1s
    :FOR    ${index}    IN RANGE    1    10
    \    log    ${index}
    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${7COUPOS_TITLE}    timeout=1s
    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
    \    Swipe    600    1500    600    500    3000
    Run Keyword Unless    ${found}    Fail Item In Shelf 7Coupons not found

Click Item In Shelf 7Coupons
    Wait and click element    ${7COUPOS_TITLE}

Verify 7 Coupon list
    wait until page contains element    ${7COUPOS_TITLE}
    get text    ${7COUPOS_TITLE}
    wait until page contains element    ${7COUPOS_EXP}
    get text    ${7COUPOS_EXP}
    wait until page contains element    ${7COUPOS_POINT}
    get text    ${7COUPOS_POINT}

Click 7 Coupon
    click element    ${7COUPOS_TITLE}

Verify 7 Coupon Detail
    wait until page contains element    ${7COUPOS_IMAGE_DETAIL}
    wait until page contains element    ${7COUPOS_TITLE_DETAIL}
#    get text    ${7COUPOS_TITLE_DETAIL}
    wait until page contains element    ${7COUPOS_DETAIL}
#    get text    ${7COUPOS_DETAIL}
    wait until page contains element    ${7COUPOS_YOURPOINT_TEXT}
    wait until page contains element    ${7COUPOS_YOURPOINT}
#    get text    ${7COUPOS_YOURPOINT}
    wait until page contains element    ${7COUPOS_TRUEPOINT_TEXT}
    wait until page contains element    ${7COUPOS_TRUEPOINT}
#    get text    ${7COUPOS_TRUEPOINT}

Verify Redeem 7Coupon Success
    wait until page contains element    ${7COUPOS_BANNER_IMAGE}    ${TimeOut}
    wait until page contains element    ${7COUPOS_BARCODE_IMAGE}
    wait until page contains element    ${7COUPOS_NUMBER_BARCODE}
    wait until page contains element    ${7COUPOS_TITLE_DETAIL}
    wait until page contains element    ${7COUPOS_DETAIL}
    get text    ${7COUPOS_NUMBER_BARCODE}

CLick My7Coupon Button
    Wait and click element    ${MYCOUPONS_BUTTON}

CLick Close My7Coupon Button
    Wait and click element    ${CLOSE_BUTTON}

Verify My7Coupon
    wait until page contains element    ${MY_7_HEADER}    ${TimeOut}
    wait until page contains element    ${MY_7COUPON}
#    wait until page contains element    ${MY_ADD_7COUPON}
    wait until page contains element    ${MY_BACK_BUTTON}

#Click Add 7Coupon
#    Wait and click element    ${MY_ADD_7COUPON}

