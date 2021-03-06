Feature: Add new order
  As a waiter
  so I can ensure customers receive the correct dishes
  I want to store a new order

# please start each step with a capital letter

  Scenario: Try to Add an new order
    Given I am on the "Order Information" page
    And I should see "Order List"
    And I should see button "Show Detail"
    And I should see button "Add New"
    And I should see button "Edit"
    And I should see button "Back"
    And "Show Detail" is disabled
    And "Edit" is disabled
    #And orders in the "Order List" is sorted by time and status
    When I press "Add New"
    Then I should be on the "New Order" page
    When I press "Back"
    Then I should be on the "Order Management" page

 Scenario: Try Add menus into an order (successful added)
    Given I am on the "New Order" page
    #And I should see "Menu List" list
    #And I should see "Menu List" list is empty
    And I should see "Add Menu" 
    And I should see button "Save"
    And I should see button "Back"
    And "Save" is disabled 
    #When I drag a menu "Cool cucumber" from "Menu List" to "Ordered List"
    When I fill in "Add Menu" with "Cool Cucumber"
    And I press "Save"
    Then I should see "Order added successfully" 
    When I press "Back"
    Then I should be on the "Order Information" page

  Scenario: Try Add menus into an order (failure added)
    Given I am on the "New Order" page
    #And I should see "Menu List" list
    #And I should see "Menu List" list is empty
    And I should see "Add Menu" 
    And I should see button "Save"
    And I should see button "Back"
    And "Save" is disabled 
    #When I drag a menu "Cool cucumber" from "Menu List" to "Ordered List"
    When I fill in "Add Menu" with "Cool Cucumber"
    And I press "Save"
    Then I should see "Failure to add an order" 
    When I press "Back"
    Then I should be on the "Order Information" page

