*** Settings ***
Documentation    This Module is to handle all the operations related to the login-screen
Library          AppiumLibrary
Resource         screen1_landing.robot

*** Variables ***
${username}         in.upstox.pro:id/user_id_value
${password}         in.upstox.pro:id/password_value
${signin_button}    in.upstox.pro:id/sign_in_btn
${pin_field}        in.upstox.pro:id/pin_field
${key_pad}          in.upstox.pro:id/passcodeTableLayout
${home_screen}          in.upstox.pro:id/watchListRecyclerView

${keypad_button1}   in.upstox.pro:id/button1
${keypad_button2}   in.upstox.pro:id/button2
${keypad_button3}   in.upstox.pro:id/button3
${keypad_button4}   in.upstox.pro:id/button4
${keypad_button5}   in.upstox.pro:id/button5
${keypad_button6}   in.upstox.pro:id/button6
${keypad_button7}   in.upstox.pro:id/button7
${keypad_button8}   in.upstox.pro:id/button8
${keypad_button9}   in.upstox.pro:id/button9
${keypad_button0}   in.upstox.pro:id/button0

*** Keywords ***

Enter the valid Username
    [Arguments]     ${input_username}
    Wait for Element to get visible         ${username}
    input text      ${username}             ${input_username}

Enter the valid Password
    [Arguments]     ${input_password}
    Wait for Element to get visible         ${password}
    input text      ${password}             ${input_password}

Click on Signin Button
    Wait for Element to get visible         ${signin_button}
    click element                           ${signin_button}

The user be navigated to pin security screen successfully
     Wait for Element to get visible        ${pin_field}
     element should be visible              ${pin_field}

Enter the year of birth
      Wait for Element to get visible       ${key_pad}
      click element                         ${keypad_button1}
      click element                         ${keypad_button9}
      click element                         ${keypad_button9}
      click element                         ${keypad_button0}

User should be navigated to Home Screen
      Wait for Element to get visible       ${home_screen}
      element should be visible             ${home_screen}