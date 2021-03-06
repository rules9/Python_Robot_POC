*** Settings ***
Documentation  This file contains the neccessary keywords and Library needed for Setup
Library         AppiumLibrary
Library         Process

*** Variables ***
${automationName}       Appium
${appium_host}          http://localhost:4723/wd/hub
${platformName}         Android
${platform_version}     9
${deviceName}           emulator-5554
${appPackage}           in.upstox.pro
${appActivity}          .views.main.UpstoxLauncherActivity
${app}                  C:\\Users\\Shivam.raghuwanshi\\upstox.apk
${alias}                upstox

${skip_button}          in.upstox.pro:id/intro_btn_skip
${next_button}          in.upstox.pro:id/intro_btn_next


*** Keywords ***

Install and Open application
    Open Application    ${appium_host}  platformName=${platformName}    platformVersion=${platform_version}     deviceName=${deviceName}    app=${app}  appPackage=${appPackage}  appActivity=${appActivity}

The App should get open
    element should be visible   ${skip_button}
    element should be visible   ${next_button}