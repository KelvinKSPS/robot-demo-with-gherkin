*** Keywords ***

Translator button should exist
  Page Should Contain Element   ${Translator Button}
  Close Browser

Careers page should be displayed
  ${Current Url}=     Get Location
  Should Be Equal As Strings    ${Current Url}  ${Careers Url}
  Close Browser


English SiDi page should be displayed
  ${Current Url}=     Get Location
  Should Be Equal As Strings    ${Current Url}  ${English Url}
  Close Browser


