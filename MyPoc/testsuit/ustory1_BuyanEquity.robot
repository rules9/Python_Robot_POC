*** Settings ***
Documentation  This Suite Contains the Test Cases for Install and Launcher Activity
Resource       ..\\resources\\utility_setup.robot
Resource       ..\\resources\\screen1_landing.robot
Resource       ..\\resources\\screen2_home.robot
Resource       ..\\resources\\screen3_equityports.robot
Resource       ..\\resources\\screen4_buyEquity.robot
Resource       ..\\resources\\screen5_reviewAndbuy.robot

*** Variables ***
${quantiy_of_product}       3
${order_complexity_type}    SIMPLE
${input_order_type}         LIMIT
${input_buy_price}          10
${input_product_type}       INTERDAY
${input_validity}           DAY
${input_disclose_quantity}  1

*** Test Cases ***
1: Install and Open App
    Install and Open application
        The App should get open

2: Navigate to Home Screen
    Click on Skip Button
        Navigated to Home Screen
    Verify Given Equities in Equity List
        Equities verified successfully


3. Select and Buy the provided Equity
    Select Given Equity
        Equity Selected Successfully

4. Verify the Contents present at Equity port screen
    Verify the sell button present
        Verified the sell button presence
    Verify the buy button is present
        Verified the buy button presence
    Verified the graph presence
        Verified the graph presence
    Click on buy button
        Successfully clicked on buy button

5. Fill all the purchase details
    Enter the quantity              ${quantiy_of_product}
    Select the Order Complexity     ${order_complexity_type}
    Select the Order Type           ${input_order_type}
    Select the Buy Price            ${input_buy_price}
    Select the Product Type         ${input_product_type}
    Select the Validity             ${input_validity}
    Select the Disclose QTY         ${input_disclose_quantity}
    Click on Review Button
        Details added successfully

6. Verify the details and buy the Equity
    Review all the details
        Equity Details verified successfully
    Buy the Equity
        Verify the Error for guest user


