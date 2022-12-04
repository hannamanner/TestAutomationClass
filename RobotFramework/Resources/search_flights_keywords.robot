*** Settings ***
Library         ..//Libraries//SearchFlightPage.py  Chrome
Library         SeleniumLibrary

*** Keywords ***
#Open Home Page
#    Open

Select Departure
    [Arguments]                  ${city1}
    Select Departure City        ${city1}
    Sleep  3 s
Select Destination          
    [Arguments]                  ${city2}
    Select Destination City      ${city2}
    Sleep  3 s
Search Flights
    Search For Flights
    Sleep  3 s
Confirm Availability
    @{flights}=                     Get Found Flights
    Should Not Be Empty             ${flights}
Close Home Page
    Close