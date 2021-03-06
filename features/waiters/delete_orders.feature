Feature: delete orders
  As a waiter
  So I can indicate an order has been served
  I want to remove that order from the current list?

# please start each step with a capital letter

  Scenario: Try to edit an order
    Given I am on the "Order Management" page
    And I should see button "Orders"
    When I press "Orders"
    Then I should be on the "Order Information" page
    And I should see "Order List"
    And I should see button "Show Detail"
    And I should see button "Add New"
    And I should see button "Edit"
    And I should see button "Back"
    And "Show Detail" is disabled
    And "Add New" is disabled
    And "Edit" is disabled
    #And orders in the "Order List" is sorted by time and status
    When I see "Order 12 is selected"
    Then I should be on the "Order Information Editable" page
    And "Show Detail" is enable
    And "Edit" is enable
    When I press "Edit"
    Then I should be on the "Edit Order Detail" page
    When I press "Back"
    Then I should be on the "Order Management" page

  Scenario: Try to delete an order (successful)
   Given I am on the "Edit Order Detail" page
    And I should see "Ordered Menu"
    And I should see button "Delete"
    And I should see button "Back"
    When I press "Delete"
    Then I should see "Order Deleted" 
    When I press "Back"
    Then I should be on the "Order Information" page

  Scenario: Try to delete an order (failure)
    Given I am on the "Edit Order Detail" page
    And I should see "Ordered Menu"
    And I should see button "Delete"
    And I should see button "Back"
    When I press "Delete"
    Then I should see "Fail to Delete Order 12" 
    When I press "Back to Edit"
    Then I should be on the "Edit Order Detail" page
