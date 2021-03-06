Feature: check order information
  As a waiter
  So I can serve the customers the correct dishes
  I want to retrieve order information

  Scenario: Try to show order information
    Given I am on the "Order Management" page
    Then I should see button "Orders"
    When I press "Orders"
    Then I should be on the "Order Information" page
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
    And "Edit" is disabled
    When I press "Show Detail"
    Then I should be on the "Order Detail" page
    When I press "Back"
    Then I should be on the "Order Management" page

  Scenario: Try to show detail of an order
    Given I am on the "Order Detail" page
    And I should see "Ordered Menu" 
    And I should see button "Back"
    When I press "Back"
    Then I should be on the "Order Information" page
