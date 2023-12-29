Feature: Product Search in Jamtangan.com

# Happy Flow
Scenario: User search product with valid keywords
    Given user logged in Jamtangan.com
    And user is in homepage
    When user input valid keywords in the search bar
    And user click on Search button
    Then search result display list of products matching the entered keyword
    And each product in the results should have the product name, price, rating displayed
    And user should be able to click on the product

Scenario: User get search on boarding
    Given user logged in Jamtangan.com
    And user is in homepage
    When user input valid keywords in the search bar
    And user click on Search button
    Then user will get onboarding on search results
    And the onboarding suggestions include helpful tips

Scenario: User search product using Pencarian Populer
    Given user logged in Jamtangan.com
    And user is in homepage
    When user click on search bar
    And user click on Pencarian Populer
    Then search result display popular products as selected
    And frequently searched by other users 

Scenario: User search product using keyword history
    Given user logged in Jamtangan.com
    And user is in homepage
    When user click on search bar

Scenario: User visit product detail page from last seen product on search page

Scenario: User search product by category

Scenario: User apply filter on search page

Scenario: User apply sort on search page

Scenario: User search product and min max price range

Scenario: User reset search keyword

# Negative Test
Scenario: User search product with invalid keyword

Scenario: User applies many filters on search page

Scenario: User input a very long search keyword

Scenario: User set invalid min max price range

