Feature: Product Search in Jamtangan.com

# Happy Flow
Scenario: User search product with valid keywords
    Given user logged in Jamtangan.com
    And user is in homepage
    When user input valid keywords in the search bar
    And user click on Search button
    Then search result display list of products matching the entered keyword
    And each product should have the product name, price, rating displayed
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
    And user see list of Pencarian Populer
    And user click on one of Pencarian Populer
    Then search result display popular products as selected
    And search bar should be relevant to the popular products
    And frequently searched by other users

Scenario: User search product using keyword history
    Given user logged in Jamtangan.com
    And user is in homepage
    And user has previously searched for products 
    When user click on search bar
    And user see list of keyword history
    And select keyword from the history
    Then search result display a list of products related to the selected keyword
    And search bar should be relevant to the selected keyword

Scenario: User clears keyword history
    Given user logged in Jamtangan.com
    And user is in homepage
    And user has previously searched for products 
    When user click on search bar
    And user see list of keyword history
    And click close icon to clear keyword history
    Then keyword history removed
    And deleted keyword history should no longer be visible

Scenario: User visit product detail page from last seen product on search page
    Given user logged in Jamtangan.com
    And user is in homepage
    And user has previously searched for products 
    When user click on search bar
    And user click on last seen product
    Then user redirect to product detail page
    And user see product info

Scenario: User search product by category
    Given user logged in Jamtangan.com
    And user is in search page
    When user selects a specific category from the category menu in sidebar
    Then search result display list of products within the selected category
    And display Filter Aktif related to the selected category

Scenario: User apply filter on search page
    Given user logged in Jamtangan.com
    And user is in search page
    When user apply selected filter from the sidebar menu
    Then search result display list of products within the selected filter
    And display Filter Aktif related to the selected filter

Scenario: User apply sort on search page
    Given user logged in Jamtangan.com
    And user is in search result page
    And user see product list in search result
    When user click on Urutkan dropdown
    And user click to sort the search results by specific criterion
    Then displayed products should be ordered according to the selected sort order

Scenario: User search product with min max price range
    Given user logged in Jamtangan.com
    And user is in search result page
    And user see product list in search result
    When user sets the minimum price to "50.000" and maximum price to "5.000.000"
    And user click on Terapkan button
    Then all displayed products have prices within the specified range of "50.000" to "5.000.000"
    And display Filter Aktif related to the price range

Scenario: User reset search keyword
    Given user logged in Jamtangan.com
    And search result is product not found
    When user click on Reset Pencarian button on not found product
    Then the system should clear the search bar
    And user see an empty in the search bar


# Negative Test
Scenario: User search product with invalid keyword
    Given user logged in Jamtangan.com
    And user is in homepage
    When user input invalid keywords in the search bar
    And user click on Search button
    Then search result contains text "Pencarian gak ditemukan" displayed
    And Reset Pencarian button is displayed

Scenario: User applies many filters on search page
    Given user logged in Jamtangan.com
    And user is in search result page
    And user see product list in search result
    When user applies many filters in sidebar
    Then search result contains text "Pencarian gak ditemukan" displayed
    And product list is empty

Scenario: User input a very long search keyword
    Given user logged in Jamtangan.com
    And user is in homepage
    When user input long keywords in the search bar
    And user click on Search button
    Then user cannot input more than 99 characters
    And search results will display products only according to the keywords

Scenario: User set invalid min max price range
    Given user logged in Jamtangan.com
    And user is in search result page
    And user see product list in search result
    When user sets the minimum price to "5.000.000" and maximum price to "5.000"
    Then user should see an validation message "Lebih kecil dari harga min"
    And Terapkan button is disabled

Scenario: User search product when connection unstable
    Given user logged in Jamtangan.com
    And user is in homepage
    When user input valid keywords in the search bar
    And user click on Search button
    And the connection is lost during the process
    Then show error message contains "Koneksinya putus" in search result
    And user should see Coba Lagi button
