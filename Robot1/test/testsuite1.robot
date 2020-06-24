*** Settings ***
Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log     I am inside Test Suite Teardown
Test Setup       Log    I am inside Test Setup
Test Teardown    Log Many    I am inside Test Cleanup    Also good
Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    ${TEST NAME}
    LogPrint

MySecTest
    Log    ${TEST NAME}
    
MyThirdTest
    Log    ${TEST NAME}
       
*** Variables ***
${str1}    Hello World...
@{list1}    1    2    3
&{dict1}    name=moni    age=32

*** Keywords ***
LogPrint
    Log    ${str1}@{list1}[0]
    Log    &{dict1}[name]
    Log    %{username}