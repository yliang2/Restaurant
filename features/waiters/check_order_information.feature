Feature: check order information
  As a waiter
  So I can serve the customers the correct dishes
  I want to retrieve order information

  Scenario: Try to show order information
    Given I am on the "Order Management" home page
    Then I should see "Orders"
    When I press "Orders"
    Then I should be on the "Order Information" page
    And I should see "Order List","Show Detail","Add New","Edit","Back"
    And "Show Detail", "Add New", "Edit" is disabled
    And orders in the "Order List" is sorted by time and status
    When one order in "Order List" is selected
    Then "Show Detail" and "Edit" are enabled
    When I press "Show Detail"
    Then I should be on the "Order Detail" page
    When I press "Back"
    Then I should be on the "Order Management" home page

  Scenario: Try to show detail of an order
    Given I am on the "Order Detail" page
    Then I should see "Ordered Menu" and "Back"
    When I press "Back"
    Then I should be on the "Order Information" page
