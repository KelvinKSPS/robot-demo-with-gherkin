*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections

# Common Resources
Resource  ../Resources/common.robot
Resource  ../PageObjects/sidi.robot

# Gherkin Resources
Resource  ../StepDefinitions/given.robot
Resource  ../StepDefinitions/when.robot
Resource  ../StepDefinitions/then.robot

# Testing Configuration
Test Teardown  Run Keyword If Test Failed    Capture Page Screenshot
Suite Teardown  Close All Browsers

*** Variables ***
${Browser}  Chrome
${URL}  http://www.sidi.org.br
    

*** Test Cases ***
Translator Button existence
  Given SiDi page is opened
  When I check translator button behavior
  Then Translator button should exist

Moving user to English Page 
  Given SiDi page is opened
  When I click to change the language
  Then English SiDi page should be displayed

Moving user to Careers Page
  Given SiDi page is opened
  When I click on Menu
  And I click on Careers option
  Then Careers page should be displayed

*** Keywords ***

