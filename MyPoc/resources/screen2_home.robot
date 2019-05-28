*** Settings ***
Documentation  This utility file contains all the keywords and vaiable related to home screen
Library  AppiumLibrary
Library  Process
Resource       screen1_landing.robot

*** Variables ***
${equity_adani}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.FrameLayout/android.widget.LinearLayout
${equity_ambuja}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout
${equity_asian}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[3]/android.widget.FrameLayout/android.widget.LinearLayout
${home_screen}          in.upstox.pro:id/watchListRecyclerView
${equity_port}           in.upstox.pro:id/stockDetailsSubHeadingContainer
${equity_bhel}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[8]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[1]
${equity_provided}      //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[10]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[1]
${equity_of_list}       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout[1]/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[4]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView[1]

${leftmenu}         Open
${swipe_x}          50
${swipe_end_x}      20
${swipe_y}          50
${swipe_end_y}      20

*** Keywords ***
Verify Given Equities in Equity List
    Wait for Element to get visible     ${equity_adani}
    element should be enabled           ${equity_adani}
    element should be enabled           ${equity_ambuja}
    element should be enabled           ${equity_asian}

Equities verified successfully
    element should be visible           ${home_screen}

Select Given Equity
    swipe by percent    ${swipe_x}          ${swipe_y}          ${swipe_end_x}          ${swipe_end_y}
    Wait for Element to get visible         ${equity_provided}
    click element       ${equity_provided}

Equity Selected Successfully
    Wait for Element to get visible     ${equity_port}
    element should be visible           ${equity_port}

Open the left drwaer
    wait for element to get visible     ${leftmenu}
    click element                       ${leftmenu}

Tab in the screen to access the list
    Wait for Element to get visible     ${equity_of_list}
    tap                                 ${equity_of_list}