*** Settings ***
Library     AppiumLibrary


*** Variables ***
${TimeOut}  40s



*** Keywords ***

Wait and Click Element
    [Arguments]    ${locator}
    wait until page contains element    ${locator}    ${TimeOut}
    Click Element    ${locator}

Search Shelf
    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${shelf_name}    timeout=1s
    :FOR    ${index}    IN RANGE    1    10
    \    log    ${index}
    \    ${found}    Run Keyword and Return Status    Wait Until Page Contains Element    ${shelf_name}    timeout=1s
    \    Run Keyword If    ${found}    Run Keywords    Exit For Loop
    \    Swipe    600    1500    600    500    3000
    Run Keyword Unless    ${found}    Fail    Shelf not found

















Click Mobile Element
    [Arguments]    ${locator}    ${timeout}=${TimeOut}
    ${result}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}    ${timeout}
    Run Keyword If    '${result}'=='False'    Wait Mobile Until Page Contains Element    ${locator}    ${timeout}
    sleep    ${timeout}
    Click Element    ${locator}

Wait Mobile Until Page Contains Element
    [Arguments]    ${locator}    ${timeout}=${TimeOut}
    Wait Until Element Is Visible    ${locator}    ${timeout}

Input mobile text
    [Arguments]    ${loctor}    ${text}
    Wait Mobile Until Page Contains Element    ${loctor}
    AppiumLibrary.Input Text    ${loctor}    ${text}

Double click Mobile
    [Arguments]    ${locator}
    [Documentation]    Double click at object
    Wait Mobile Until Page Contains Element    ${locator}
    Tap    ${locator}    327    219    2

Verify Mobile text
    [Arguments]    ${Locator}    ${Text}
    Wait Until Keyword Succeeds    60    3sec    Wait Until Element Is Visible    ${Locator}
    ${TextActual}    Get Text    ${Locator}
    ${Temp}    Remove String    ${TextActual}    ${SPACE}
    ${Temp}    Get Length    ${Temp}    #count length because if not support special charector
    ${TextActual}    Run Keyword If    '${Temp}' == '0'    Get Value    ${Locator}
    ...    ELSE    Set Variable    ${TextActual}
    #${TextActual}    Run Keyword If    '${TextActual}'==''    Set Variable    None
    ...    ELSE    Set Variable    ${TextActual}
    Should Be Equal    ${TextActual}    ${Text}
    log    ${TextActual} == ${Text}

Get Mobile Text
    [Arguments]    ${element}    ${timeout}=${TimeOut}
    #[Documentation]...
    ${x}         Get App text     ${element}
    ${result}    Run Keyword And Return Status    Wait Mobile Until Page Contains Element    ${element}    ${timeout}
    Run Keyword If    '${result}'=='False'    Wait Mobile Until Page Contains Element    ${element}    ${timeout}
    ${TextActual}    Get Text    ${element}
    log    ${textActual}
    [Return]    ${textActual}

Swipe Right
       [Arguments]    ${locator}
       &{locator_size}    Get Element Size    ${locator}
       ${locator_width}    Set Variable    &{locator_size}[width]
       ${locator_height}    Set Variable    &{locator_size}[height]
       &{locator_location}    Get Element Location    ${locator}
       ${locator_y}    Set Variable    &{locator_location}[y]
       ${width_left}    Set Variable    10
       ${width_right}    Evaluate    ${locator_width}*0.9
       ${height_center}    Evaluate    ${locator_y}+(${locator_height}*0.5)
       Swipe    ${width_left}    ${height_center}    ${width_right}    ${height_center}    500
       Sleep    1s

Swipe Left
      [Arguments]    ${locator}
      &{locator_size}    Get Element Size    ${locator}
      ${locator_width}    Set Variable    &{locator_size}[width]
      ${locator_height}    Set Variable    &{locator_size}[height]
      &{locator_location}    Get Element Location    ${locator}
      ${locator_y}    Set Variable    &{locator_location}[y]
      ${width_left}    Set Variable    10
      ${width_right}    Evaluate    ${locator_width}*0.9
      ${height_center}    Evaluate    ${locator_y}+(${locator_height}*0.5)
      Swipe    ${width_right}    ${height_center}    ${width_left}    ${height_center}    500
      Sleep    1s

