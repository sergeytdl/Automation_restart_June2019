Feature: Sign Up

   Scenario: Account creation.
   Given I have opened landing page
   And I am on Sign In page
   When I enter new email 
   And I press Create account button
   And I enter a mandatory user details, name: 'Vards' lastname: "Uzvards"
   And I press Register button
   #And I click on My Personal Information button
   #Then Your Personal Information page is opened
   #And correct personal information is displayed
   
   Given I have opened landing page
   And I am on Sign In page
   And I login with login "sergtest@inbox.lv" and password "pagaiduparole"
   And I press login button
   And I am logged in
   When I select Search menu
   And I enter "Blouse"
   And I click on Search button