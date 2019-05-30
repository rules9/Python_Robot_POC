*** Settings ***
Documentation    This Module is perticulary for the left menu pane
Library          AppiumLibrary
Resource         screen1_landing.robot

*** Variables ***
${welcome text}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView
${login_button}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout
${signin_button}   in.upstox.pro:id/sign_in_btn

*** Keywords ***
Left drawer opened successfully
    Wait for Element to get visible     ${welcome text}
    element should be visible           ${welcome text}

Click on log-in Button
    Wait for Element to get visible     ${login_button}
    click element                       ${login_button}

Navigated to Login Screen successfully
    Wait for Element to get visible     ${signin_button}
    element should be visible           ${signin_button}