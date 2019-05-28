*** Settings ***
Documentation    This Module is to Handle the Equity Port Screen
Library         AppiumLibrary

*** Variables ***
${buy_button}   in.upstox.pro:id/stockDetailsBuyBtn
${sell_button}  in.upstox.pro:id/stockDetailsSellBtn
${graph}        //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.support.v4.view.ViewPager/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View
${info_layout}  in.upstox.pro:id/oe_info_layout

*** Keywords ***
Verify the buy button is present
    element should be visible  ${buy_button}

Verified the buy button presence
    element should be enabled  ${buy_button}

Verify the sell button present
    element should be visible  ${sell_button}

Verified the sell button presence
    element should be enabled   ${sell_button}

Verify the graph is present
    element should be visible   ${graph}

Verified the graph presence
    element should be enabled   ${graph}

Click on buy button
    click element   ${buy_button}

Successfully clicked on buy button
    element should be visible  ${info_layout}