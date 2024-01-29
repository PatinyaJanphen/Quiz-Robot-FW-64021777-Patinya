*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    http://automationexercise.com   chrome


*** Variables ***
${email}         dentrr15@gmail.com
${name}          XXXXX   
${password}          XXXXX   
${days_dropdown_locator}    25
${months_dropdown_locator}    2
${years_dropdown_locator}    2002
${first_name}    patinya
${last_name}    janphen
${company}    test
${address}    test
${address2}    test
${country}
${state}    nan
${city}    nan
${zipcode}    55110
${mobile_number}    0931894005

*** Keywords ***

Click SignupLogin Button
    Click Link        //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    
Click Signup Button
    Click Button        //*[@id="form"]/div/div/div[3]/div/form/button

Click Title
    Click Button        //*[@id="id_gender1"]

Click Create Account button
    Click Button        //*[@id="form"]/div/div/div/div[1]/form/button

Click Continue button
    Click Link    //*[@id="form"]/div/div/div/div/a

Click Delete Account button
    Click Link    //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

Checked Sign up for our newsletter
    Click Button    //*[@id="newsletter"]

Checked Receive special offers from our partners
    Click Button    //*[@id="optin"]



Input Name
    [Arguments]    ${name}
    Input Text    //*[@name="name"]    ${name}

Input Email
    [Arguments]    ${email}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}

Input Password
    [Arguments]    ${password}
    Input Text    //*[@name="password"]    ${password}

Input First name
    [Arguments]    ${first_name}
    Input Text    //*[@id="first_name"]    ${first_name}

Input Last name
    [Arguments]    ${last_name}
    Input Text    //*[@id="last_name"]    ${last_name}

Input Company
    [Arguments]    ${company}
    Input Text    //*[@id="company"]    ${company}

Input Address
    [Arguments]    ${address}
    Input Text    //*[@id="address1"]    ${address}

Input Address2
    [Arguments]    ${address2}
    Input Text    //*[@id="address2"]    ${address2}

Input Country 
    [Arguments]    ${country}
    Input Text    //*[id="country"]    ${country}

Input State  
    [Arguments]    ${state}
    Input Text    //*[@id="state"]    ${state}

Input City  
    [Arguments]    ${city}
    Input Text    //*[@id="city"]    ${city}

Input Zipcode  
    [Arguments]    ${zipcode}
    Input Text    //*[@id="zipcode"]    ${zipcode}

Input Mobile Number  
    [Arguments]    ${mobile_number}
    Input Text    //*[@id="mobile_number"]    ${mobile_number}

*** Test Cases ***
Register with valid info
    [Documentation]    Test the login functionality with valid credentials
    Page Should Contain Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Click SignupLogin Button
    Page Should Contain Element    //*[@id="form"]/div/div/div[3]/div/h2
    Input Name    ${name}
    Input Email  ${email}
    Click Signup Button
    Sleep    2
    Page Should Contain Element    //*[@id="form"]/div/div/div/div[1]/h2/b
    Click Title
    Input Password    ${password}

    Checked Sign up for our newsletter
    Checked Receive special offers from our partners
    Input First name    ${first_name}
    Input Last name    ${last_name}
    Input Company    ${company}
    Input Address    ${address}
    Input Address2    ${address2}
    Input State    ${state}
    Input City    ${city}  
    Input Zipcode    ${zipcode}  
    Input Mobile Number    ${mobile_number}
    Click Create Account button
    Page Should Contain Element    //*[@id="form"]/div/div/div/h2/b
    Click Continue button

    Page Should Contain Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a/i
    Click Delete Account button
    Page Should Contain Element    //*[@id="form"]/div/div/div/h2/b
    Click Continue button

 