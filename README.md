### Robot Framework-Mobile Automation
# Description:

This project is a POC that is created to demonstrate Mobile Automation performed with the help of “RobotFramework” and “Python” technology. This POC contains a basic user workflow of the user Log-in and Buy Equity.
For demonstration purpose this POC uses Upstox pro public [Android app](https://play.google.com/store/apps/details?id=in.upstox.pro&hl=en_IN). This test can seamlessly be performed on any other iOS/Android apps with minor script changes in the workflow and configuration. 


# Tools and Technology Used:

    1.	Python  3.7 and above (Robot Framework works with this version of Python)
    2.	Appium 
    3.	Android Studio
    4.	Robot Framewok
    5.	Node.js
    6.	Robot-Appium Library
    7.	PyCharm (Python Editor)
## Prerequisite:
###  Environmental: Environmental Variable is already configured for
    1.1	Java home
    1.2	Android Home
    1.3	Node 
    1.4	Appium Library
    1.5	PyCharm
    1.6	Robot Framework
    1.7	Python Home
    1.8	Android Apk (On which the test has to be performed)

###	Application: Test data should be available for the desired workflow
    1.1	User credentials are already available
    1.2	Test Data is already present

###	Robot Automation Script: Robot script needs some device and apk configuration to 
run the scripts in perfect way.
 ##### File: Utility_setup.robot
    1.1.1	${automationName}      	:  Appium
    1.1.2	${appium_host}          : http://localhost:4723/wd/hub
    1.1.3	${platformName}       	:  Android
    1.1.4	${platform_version}    	: 9 (Depends on Device)
    1.1.5	${deviceName}           : emulator-5554 (Based on Real or Emulator)
    1.1.6	${appPackage}           : in.upstox.pro
    1.1.7	${appActivity}          : .views.main.UpstoxLauncherActivity
    1.1.8	${app}                  : “$local/apk/path”
    1.1.9	${alias}                : upstox


# ROBOTSCRIPTS Architecture:
Robot Framework is basically aligned for acceptance Test driven development (ATDD), along with that this POC is designed based on the Page object modeling as each screen is dived into module. Along with that this POC behaves in Keyword driven modeling. So altogether it is the complete Hybrid solution for Mobile Automation.
	The project for the POC structure is as follow:
### MyPOC >> testsuite 
•	ustory1_BuyanEquity (Test Script): This is the user story based test script, where you find one user story is implemented with the help of screen resources file.
The test steps are written in such a way that anyone can get the idea what is being executed.

•	resources : This contains all the resource file for each of the screen, the resources consists of
(i)	Keyword: This will be the user customized keywords for the test cases that are created in a way that anyone can get the idea what the functionality is meant to do.

(ii)	Variables: These are the elements and data defined, which are used in the Keywords
 
##	Resource files for the POCs are:
1.	Base Environmental variables and set-up file
a.	utility_setup.robot

2.	POM based Resources:
a.	screen0_login.robot
b.	screen1_landing.robot
c.	screen2_home.robot
d.	screen3_equityports.robot
e.	screen4_buyEquity.robot
f.	screen5_reviewAndbuy.robot
g.	screenA_leftdrawer.robot



# Results: All the results generated by the script will be stored in the directory in different formats with failure Screen Screenshot if any.
1.	Reports.html
2.	Log.html

# Script Execution:
	Below is the process that gives you the idea how to execute the scripts.
Prerequisite:  Considering some basic aspects that are already configured and present, those are:
a.	All the tools and its path setup
b.	Test data is already present

1.	Update the pip using:
•	pip install --upgrade pip

2.	Install Robot Appium-Library using:
•	pip install robotframework-appiumlibrary

3.	Start the emulator 
•	Create a device with latest configuration and mention the same in the utilites_setup.robot file.
•	In case of Real device mention the device name and configuration.
•	To get the device name use adb devices command on cmd prompt/terminal.

4.	Configure the Appium for local host and Android Home
 

5.	Start the Appium at local host.

6.	Run the Robot script using command:

####### command : Robot  -T –d 	<result-directory-name> <script-path>.robot.
•	-T : Generated report with Data and Time stamp 
•	-d : For creating results directory


## Note: The POC is created in a short duration hence work is in-progress mainly for 
•	Code optimization
•	Script performance
•	Script Designing
•	Test cases for iOS app will be added soon
Rest of the things will also be taken care when it is completed fully.

### Reference: Refer Wiki for more information. 
			
