#Desktop/QaSDK/TopBarSDK/Test/Sanity
#robot sanity.robot
#robot -d ../Results/Cucamber Cucamber.robot

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
Resource    ../../Resources/TrueCard.robot

#Suite Setup    Launch TopBar Application


*** Variables ***


*** Test Cases ***
TopBar-SAN-001 User view TrueCard and Swith TrueCard
    [Tags]    sanity    TrueCard
    Given I want to Launch TopBar AND Login True Card
    When I open Topbar
    And I click true card
    Then I should see truecard and I can switch back and font of TrueCard

TopBar-SAN-002 User verify TrueCard Information
    [Tags]    sanity    TrueCard
    Given I want to Verify TrueCard Information
    When I Click TrueCard Information button
    Then I see TrueCard Information
    And I close TrueCrad

*** Keywords ***
I want to Launch TopBar AND Login True Card
    Launch TopBar Application AND Login True Card
I open Topbar
    Open TopBar
    Show TrueCard on TopBar
I click true card
    Click TrueCard
I should see truecard and I can switch back and font of TrueCard
    Verify TrueCard
    Switch back and font TrueCard

I want to Verify TrueCard Information
    Verify TrueCard
I Click TrueCard Information button
    Click Card Information
I see TrueCard Information
    Verify Card Information
I close TrueCrad
    Close Card Information
    Close TrueCard