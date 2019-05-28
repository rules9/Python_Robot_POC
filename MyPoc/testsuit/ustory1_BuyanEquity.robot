*** Settings ***
Documentation  This Suite Contains the Test Cases for Install and Launcher Activity
Resource       ..\\resources\\utility_setup.robot
Resource       ..\\resources\\screen1_landing.robot
Resource       ..\\resources\\screen2_home.robot
Resource       ..\\resources\\screen3_equityports.robot
Resource       ..\\resources\\screen4_buyEquity.robot
Resource       ..\\resources\\screen5_reviewAndbuy.robot
Resource       ..\\resources\\screenA_leftdrawer.robot
Resource       ..\\resources\\screen0_login.robot

Suite Teardown   Close Application

*** Variables ***
${quantiy_of_product}       3
${order_complexity_type}    SIMPLE
${input_order_type}         LIMIT
${input_buy_price}          2
${input_product_type}       INTERDAY
${input_validity}           DAY
${input_disclose_quantity}  1
${input_username}           115723
${input_password}           shobhit@123

*** Test Cases ***
1: Install and Open App
    Install and Open application
        The App should get open

2: Navigate to Home Screen
    Click on Skip Button
        Navigated to Home Screen
    Verify Given Equities in Equity List
        Equities verified successfully

3. Log-in through left drawer
    Open the left drwaer
        Left drawer opened successfully
    Click on log-in Button
        Navigated to Login Screen successfully

    Enter the valid Username        ${input_username}
    Enter the valid Password        ${input_password}
    Click on Signin Button
        The user be navigated to pin security screen successfully

    Enter the year of birth
        User should be navigated to Home Screen
        Tab in the screen to access the list

4. Select and Buy the provided Equity
    Select Given Equity
        Equity Selected Successfully

5. Verify the Contents present at Equity port screen
    Verify the sell button present
        Verified the sell button presence
    Verify the buy button is present
        Verified the buy button presence
    Click on buy button
        Successfully clicked on buy button

6. Fill all the purchase details
    Enter the quantity              ${quantiy_of_product}
    Select the Order Complexity     ${order_complexity_type}
    Select the Order Type           ${input_order_type}
    Select the Buy Price            ${input_buy_price}
    Select the Product Type         ${input_product_type}
    Select the Validity             ${input_validity}
    Select the Disclose QTY         ${input_disclose_quantity}
    Click on Review Button
        Details added successfully

7. Verify the details and buy the Equity
    Review all the details
        Equity Details verified successfully
    Buy the Equity
        Verify the Error for guest user


