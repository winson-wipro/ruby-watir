Feature: Optus shop Functionality tests

  @Mobile_filters
  Scenario: Optus shop Browse and filter mobile phones
    Given I open the optus home page
    When I open the shop menu
    And I click on "Latest Phones" in the shop menu
    Then I am on the mobile shop page

    When I open the "Brands" menu
    And I add a brand filter
    And I open the "Internal Memory" menu
    And I add a memory filter
    And I open the "Network Speed" menu
    And I ad a network speed filter
    And I open the "Payment Terms" menu
    And I add a payment terms filter
    And I open the "Sort" menu
    And I sort by price

  @Data_SIM_purchase
  Scenario: Optus shop Buy a data SIM
    Given I open the optus home page
    When I open the shop menu
    And I click on "Data SIMs" in the shop menu
    Then I am on the Data SIMs shop page

    When I choose a Data Sim plan
    And I click on the "I'm new to Optus radio button" button
    And I click on the "Proceed to checkout as a new customer" button
    And I wait for the screen to load
    And I click on the "Proceed to Cart" button
    And I fill in the "First name" field
    And I fill in the "Last name" field
    And I fill in the date of birth
    And I fill in the "Contact number (mobile preferred)" field
    And I fill in the "Email address" field
    And I fill in the "Retype your email address" field
    And I fill in the "Residential address (as per your ID)" field
    And I select an address
    And I select a "resStatus"
    And I select a "resYr"
