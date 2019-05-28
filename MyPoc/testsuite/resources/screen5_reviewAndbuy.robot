*** Settings ***
Documentation    This Module Consists the Locaters and Keywords for the Review and Buy Screen
Library          AppiumLibrary
Resource       screen1_landing.robot

*** Variables ***
${review_screen}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView/android.widget.RelativeLayout
${price}            in.upstox.pro:id/value1Tv
${quantity}         in.upstox.pro:id/value2Tv
${order_type}       in.upstox.pro:id/value3Tv
${position}         in.upstox.pro:id/value4Tv
${validity}         in.upstox.pro:id/value5Tv
${disclose_qty}     in.upstox.pro:id/value6Tv

${buy_equity_button}    in.upstox.pro:id/buy_btn
${guest_accout_error}   in.upstox.pro:id/orderStatusTextView

*** Keywords ***
Review all the details
    Wait for Element to get visible     ${review_screen}
    element should be visible           ${review_screen}

Equity Details verified successfully
    Wait for Element to get visible     ${price}
    element should be visible           ${price}
    Wait for Element to get visible     ${quantity}
    element should be visible           ${quantity}
    Wait for Element to get visible     ${order_type}
    element should be visible           ${order_type}
    Wait for Element to get visible     ${position}
    element should be visible           ${position}
    Wait for Element to get visible     ${validity}
    element should be visible           ${validity}
    Wait for Element to get visible     ${disclose_qty}
    element should be visible           ${disclose_qty}

Buy the Equity
    Wait for Element to get visible     ${buy_equity_button}
    TAP                                 ${buy_equity_button}

Verify the Error for guest user
    Wait for Element to get visible     ${guest_accout_error}
    element should be visible           ${guest_accout_error}


