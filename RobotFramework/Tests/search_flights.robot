*** Settings ***
Force tags        flight_search    hma
Documentation     Step-by-step example on https://www.blazemeter.com/blog/robot-framework
Suite Setup       Open Home Page
Suite Teardown    Close Home Page
Resource          ..//Resources//search_flights_keywords.robot

*** Test Cases ***
The User Can Find Flights
    Select Departure      Boston
    Select Destination    New York
    Search Flights
    Confirm Availability     