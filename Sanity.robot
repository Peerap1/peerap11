#/Users/peerapoltapeng/Work/qa-sdk/TopBarSDK/Test/Sanity
#robot sanity.robot
#robot -d ../Results/Sanity Sanity.robot

*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/Desirecapability.robot
Resource    ../../Resources/Common.robot
Resource    ../../Resources/CommonKeyword.robot
Resource    ../../Resources/LoginPage.robot
Resource    ../../Resources/Setting.robot
Resource    ../../Resources/MyAccountPage.robot
Resource    ../../Resources/7Coupons.robot
Resource    ../../Resources/Recommended.robot
Resource    ../../Resources/EarnTruepoint.robot
Resource    ../../Resources/TrueCard.robot
Resource    ../../Resources/Error.robot

Suite Setup    Launch TopBar Application

*** Variables ***

*** Test Cases ***

TOPBAR-SAN-001 Verify no login Earn Truepoint
    [Tags]    nologin    sanity
    Setting.Open TopBar
    Setting.Go To Earn TruePoint Tab
    Click Item Earn True Point
    Verify Login Page
    Go back
    [Teardown]    Run Keyword If Test Failed    Launch TopBar Application

TOPBAR-SAN-002 Verify no login my account page
    [Tags]    nologin    sanity
    Setting.Open TopBar
    Setting.Go To My Accounts Tab
    Verify No Login My Accounts Page
    Search Shelf Today’s New Releases
    Click Login
    Verify Login Page
    Close Application

TOPBAR-SAN-003 Verify no login Recommended
    [Tags]    nologin    sanity
    Launch TopBar Application
    Setting.Open TopBar
    Setting.Go To Use TruePoint Tab
    Search Item In Shelf Recommended
    Click Item In Shelf Recommended
    Verify Login Page
    Go back

TOPBAR-SAN-004 Verify no login 7Coupons
    [Tags]    nologin    sanity
    Setting.Open TopBar
    Search Item In Shelf 7Coupons
    Click Item In Shelf 7Coupons
    Verify Login Page

TOPBAR-SAN-005 User view TrueCard on TopBar
    [Tags]    sanity    TrueCard
    Launch TopBar Application AND Login True Card
    Open TopBar
    Show TrueCard on TopBar
    Click TrueCard
    Verify TrueCard

TOPBAR-SAN-006 User switch TrueCard
    [Tags]    sanity    TrueCard
    Click Card Information
    Verify Card Information
    Close Card Information
    Close TrueCard
    Close Application

TOPBAR-SAN-007 User verify 7Coupon list
    [Tags]    sanity    7Coupon
    Launch TopBar Application AND Login True Card User Test
    Open TopBar
    Go To Use TruePoint Tab
    Search Item In Shelf 7Coupons
    Verify 7 Coupon list

TOPBAR-SAN-008 User verify 7Coupon detail
    [Tags]    sanity    7Coupon
    Click 7 Coupon
    Verify 7 Coupon Detail

TOPBAR-SAN-009 User Redeem 7Coupon success
    [Tags]    sanity    7Coupon
    Click Redeem Button
    Verify Redeem 7Coupon Success
    CLick My7Coupon Button
    Verify My7Coupon
    go back
    go back
    Click Logout
    [Teardown]    Run Keyword If Test Failed    Launch TopBar Application

TOPBAR-SAN-010 User No Point Redeem 7Coupon
    [Tags]    sanity    7Coupon
    Login With User No TruePoint
    Open TopBar
    Go To Use TruePoint Tab
    Search Item In Shelf 7Coupons
    Verify 7 Coupon list
    Click 7 Coupon
    Verify 7 Coupon Detail
    Click Redeem Button
    Verify Don’t have enough TruePoint dialog message
    Click Earn TruePoint Button
    Verify Item Earn True Point
    go back
    Click Logout
    [Teardown]    Run Keyword If Test Failed    Launch TopBar Application

TOPBAR-SAN-011 User No MappingThaiID Redeem 7Coupon
    [Tags]    sanity    7Coupon
    Login With User No MappingThaiID
    Open TopBar
    Go To Use TruePoint Tab
    Search Item In Shelf 7Coupons
    Verify 7 Coupon list
    Click 7 Coupon
    Verify 7 Coupon Detail
    Click Redeem Button
    Verify No MappingThaiID dialog message
    Click Confirm Button
    Verify No MappingThaiID Web View
    Close Application

TOPBAR-SAN-012 User verify Recommended list
    [Tags]    sanity    Recommended
    Launch TopBar Application AND Login True Card User Test
    Open TopBar
    Go To Use TruePoint Tab
    Search Item In Shelf Recommended
    Verify Recommended list

TOPBAR-SAN-013 User verify Recommended detail
    [Tags]    sanity    Recommended
    Click Recommended
    Verify Recommended Detail

TOPBAR-SAN-014 User Redeem Privilege in Recommended success
    [Tags]    sanity    Recommended
    Click Redeem Button
    Verify Redeem Recommended success
    go back
    go back
    Click Logout
    [Teardown]    Run Keyword If Test Failed    Launch TopBar Application

TOPBAR-SAN-015 User No Point Redeem Privilege in Recommended
    [Tags]    sanity    Recommended
    Login With User No TruePoint
    Open TopBar
    Go To Use TruePoint Tab
    Search Item In Shelf Recommended
    Verify Recommended list
    Click Recommended
    Verify Recommended Detail
    Click arrow right in Privilege detail
    Click Redeem Button
    Verify Don’t have enough TruePoint dialog message
    Click Earn TruePoint Button
    Verify Item Earn True Point
    go back
    Click Logout
    [Teardown]    Run Keyword If Test Failed    Launch TopBar Application

TOPBAR-SAN-016 User No MappingThaiID Redeem Privilege in Recommended
    [Tags]    sanity    Recommended
    Launch TopBar Application
    Login With User No MappingThaiID
    Open TopBar
    Go To Use TruePoint Tab
    Search Item In Shelf Recommended
    Verify Recommended list
    Click Recommended
    Verify Recommended Detail
    Click Redeem Button
    Verify No MappingThaiID dialog message
    Click Confirm Button
    Verify No MappingThaiID Web View
