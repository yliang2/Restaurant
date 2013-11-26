Feature: Add new order
  As a waiter
  so I can ensure customers receive the correct dishs
  I want to store a new order

# please start each step with a capital letter

  Scenario: Try to Add an new order
    Given I am on the "Order Information" page
    And I should see "Order List"
    And I should see "Show Detail"
    And I should see "Add New"
    And I should see "Edit"
    And I should see "Back"
    And "Show Detail", "Edit" is disabled
    And orders in the "Order List" is sorted by time and status
    When I press "Add New"
    Then I should be on the "New Order" page
    When I press "Back"
    Then I should be on the "Order Management" home page

  Scenario: Try Add menus into an order (successful added)
    given I am on the "New Order" page
    then I should see "Menu List", "Ordered List", "Save", "Back"
    and "Save" is disable if "Menu List" is empty
    when I drag a menu from "Menu List" to "Ordered List"
    then the menu should be in "Ordered List"
    and  the menu "quantity" in "Ordered List" should be increased by 1
    when I drag a menu from "Ordered List" to "Menu List"
    then the menu should not be in "Ordered List"
    when I press "Save"
    then I should be on "Order Information" page
    when I press "Back"
    then I should be on "Order Information" page

  Scenario: Try Add menus into an order (failure added)
    given I am on the "New Order" page
    then I should see "Menu List", "Ordered List", "Save", "Back"
    and "Save" is disable if "Menu List" is empty
    when I drag a menu from "Menu List" to "Ordered List"
    then the menu should be in "Ordered List"
    and  the menu "quantity" in "Ordered List" should be increased by 1
    when I drag a menu from "Ordered List" to "Menu List"
    then the menu should not be in "Ordered List"
    when I press "Save"
    then I should not on "Order Information" page
    and I shoud be on "Fail to Add New Order" page
    and I should see "Reason(s) of failure"
    when I press "Back to Edit"
    then I should be on "New Order" page again
