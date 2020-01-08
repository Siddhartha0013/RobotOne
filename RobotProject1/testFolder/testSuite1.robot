*** Settings ***
Library    SeleniumLibrary 
Suite Setup    Log    Test Suite Setup
Suite Teardown    Log    Test Suite Teardown
Test Setup    Log    Test Case Setup
Test Teardown    Log    Test Case Teardown            
Default Tags    TotalDefaultTag

*** Test Cases ***
MyFirstTest1
    [Tags]    smoke
    Log    Hello World1..  

MyFirstTest2
   
    Log    Hello World2.. 
    Set Tags    functional
    # Remove Tags    functional
    
MyFirstTest3
    Log    Hello World3..  
 
# FirstSeleniumTest2   
    # Open Browser    ${URL}    chrome
    # Maximize Browser Window
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation 
    # Click Button    name=btnK      
    # Sleep    5     
    # Close Browser
    # Log    Test Completed   
    
# SampleLoginTest3
    # Open Browser    ${URL2}    chrome
    # Set Browser Implicit Wait    5
    # Maximize Browser Window
    # LoginKW
    # Sleep    10 
    # Click Element    id=userNavigationLabel
    # Sleep    5
    # Click Element    xpath=//span[contains(text(),'Log Out')] 
    # Sleep    5
    # Close Browser
    # Log    Test is completed by %{username} on %{os}         
    
*** Variables ***
${URL}    https://www.google.com
${URL2}    https://www.facebook.com/
@{credential}    siddhartha013@gmail.com    Kano@12
&{logindata}    username=siddhartha013@gmail.com    password=Kano@12

*** Keywords ***
LoginKW
    Input Text    id=email    @{credential}[0]
    Input Password    id=pass    &{logindata}[password]
    Click Button    id=u_0_b
    
               

 