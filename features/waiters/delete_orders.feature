Feature: delete orders
  As a waiter
  So I can indicate an order has been served
  I want to remove that order from the current list?

# please start each step with a capital letter

  Scenario: Try to edit an order
    given I am on the "Order Management" home page
    then I should see "Orders"
    when I press "Orders"
    then I should be on the "Order Information" page
    and I should see "Order List","Show Detail","Add New","Edit","Back"
    and "Show Detail", "Add New", "Edit" is disabled
    and orders in the "Order List" is sorted by time and status
    when one order in "Order List" is selected
    then "Show Detail", "Edit" is enable
    when I press "Edit"
    then I should be on the "Edit Order Detail" page
    when I press "Back"
    then I should be on the "Order Management" home page

  Scenario: Try to delete an order (successful)
    given I am on the "Edit Order Detail" page
    then I should see "Ordered Menu" list, "Delete", "Back"
    when I press "Delete"
    then I should see "order deleted" page
    when I press "Back"
    then I should be on the "Order Information" page

  Scenario: Try to delete an order (failure)
    given I am on the "Edit Order Detail" page
    then I should see "Ordered Menu" list, "Delete", "Back"
    when I press "Delete"
    then I should not be on "order deleted" page
    and I should see "fail to delete order"
    when I press "Back to Edit"
    then I should be on the "Edit Order Detail" page
