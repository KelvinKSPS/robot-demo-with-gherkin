*** Keywords ***

I check translator button behavior
  ${Current Url}=     Get Location

I click to change the language
  Click Element   ${Translator Button}
  Click Element   ${English Option} 


I click on Menu
  Click Element   ${Menu Button}

I click on Careers option
  Wait and Click  ${Careers Option}
