#/Users/peerapoltapeng/Work/qa-sdk/TopBarSDK/Test/Sanity
#robot sanity.robot
#robot -d ../Results/Run Run.robot

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

#Suite Setup    Launch TopBar Application

*** Variables ***

*** Test Cases ***

TOPBAR-SAN-016 User No MappingThaiID Redeem Privilege in Recommended
    [Tags]    sanity    7Coupon
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
