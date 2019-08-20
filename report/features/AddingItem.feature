Feature: Adding Item
    
    Scenario: Item adding
    Given I have opened landing page
    And I am on Sign In page
    And I login with login "sergtest@inbox.lv" and password "pagaiduparole"
    And I press login button
    And I am logged in
    When I select Search menu
    And I enter "Blouse"
    And I click on Search button
    And Only 1 result is found
    And I select the item
    # And I change quantity to 2
    # And I set size to S
    # And I set color to White
    #And I select Add to cart button
    # And item is successfully added to cart
    # And I click on Proceed to checkout button
    # Then Shopping cart summary page is opened
    # And correct description is specified
    # And amount is correctly calculated
    # And Proceed to checkout button is visible


#   I am navigated to My Account section
#   Examples: information
#     | day | month | year | stateName  |
#     | 24  | September   | 1999 | Alaska     |
