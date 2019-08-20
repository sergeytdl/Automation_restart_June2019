Feature: Whislist

Background: User sign in into an account
    Given I have opened landing page
    And I am on Sign In page
    And I login with login "sergtest@inbox.lv" and password "pagaiduparole"
    And I press login button
    And I am logged in

Scenario: Adding item to Whislist
    Given I click on BEST SELLERS button
    And I select first item from list
    And Item description and condition is displayed
    And I set size to "L"
    And I click on Add to wishlist button
    And I click on My Personal Information button
    Then Your Personal Information page is opened
    And I open My Whishlist page
    Then My Wishlist item and details are displayed