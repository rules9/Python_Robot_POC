*** Settings ***
Documentation  This is for the completion for the Landing workflow
Library         AppiumLibrary

*** Variables ***
${skip_button}          in.upstox.pro:id/intro_btn_skip
${next_button}          in.upstox.pro:id/intro_btn_next

${left_pane_menu}       //android.widget.ImageButton[@content-desc="Open"]
${home_view}            in.upstox.pro:id/watchListRecyclerView
${low_wait_time}        5
${medium_wait_time}     10
${high_wait_time}       20
${long_wait_time}       30


*** Keywords ***
Click on Skip Button
    click element                   ${skip_button}
    wait until element is visible   ${home_view}     timeout=${long_wait_time}

Navigated to Home Screen
    element should be visible       ${left_pane_menu}
    element should be visible       ${home_view}

Wait for Element to get visible
        [Arguments]     ${element}
        wait until element is visible      ${element}           ${high_wait_time}