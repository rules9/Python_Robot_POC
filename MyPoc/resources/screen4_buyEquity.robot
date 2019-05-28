*** Settings ***
Documentation    This Module Contains all Keyword about Buy screen
Library          AppiumLibrary
Resource       screen1_landing.robot

*** Variables ***
${quantity}                 in.upstox.pro:id/quantity_value
${order_complexity}         //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.Spinner/android.widget.TextView
${order_type}               //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.RelativeLayout[3]/android.widget.RelativeLayout/android.widget.Spinner/android.widget.TextView
${buy_price}                in.upstox.pro:id/price_value

${product_type}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.RelativeLayout[5]/android.widget.RelativeLayout/android.widget.Spinner/android.widget.TextView
${validity}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.RelativeLayout[6]/android.widget.RelativeLayout/android.widget.Spinner/android.widget.TextView
${review_button}            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.LinearLayout
${disclose_quantity}        in.upstox.pro:id/disclosed_qty_value

${simple_order_complexity}  //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView
${limit_order_type}         //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView
${interday_product_type}    //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView
${day_validity}             //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.RelativeLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.TextView

${review_scree}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView/android.widget.RelativeLayout

*** Keywords ***

Enter the quantity
    [Arguments]     ${quantity_number}
    Wait for Element to get visible             ${quantity}
    input text      ${quantity}                 ${quantity_number}

Select the Order Complexity
    [Arguments]     ${order_complexity_type}
    Wait for Element to get visible             ${order_complexity}
    click element                               ${order_complexity}
    Wait for Element to get visible             ${simple_order_complexity}
    click element                               ${simple_order_complexity}

Select the Order Type
    [Arguments]     ${input_order_type}
    Wait for Element to get visible             ${order_type}
    click element                               ${order_type}
    Wait for Element to get visible             ${limit_order_type}
    click element                               ${limit_order_type}

Select the Buy Price
    [Arguments]     ${input_buy_price}
    Wait for Element to get visible             ${buy_price}
    input text      ${buy_price}                ${input_buy_price}
    go back

Select the Product Type
    [Arguments]     ${input_product_type}
    Wait for Element to get visible             ${product_type}
    click element                               ${product_type}
    Wait for Element to get visible             ${interday_product_type}
    click element                               ${interday_product_type}

Select the Validity
    [Arguments]     ${input_validity}
    Wait for Element to get visible             ${validity}
    click element                               ${validity}
    Wait for Element to get visible             ${day_validity}
    click element                               ${day_validity}

Select the Disclose QTY
    [Arguments]     ${input_disclose_quantity}
    Wait for Element to get visible             ${disclose_quantity}
    input text      ${disclose_quantity}        ${input_disclose_quantity}

Click on Review Button
    Wait for Element to get visible             ${review_button}
    click element                               ${review_button}

Details added successfully
    Wait for Element to get visible             ${review_scree}
    element should be visible                   ${review_scree}
