feature: delete orders
  As a waiter
  So I can delete an order for customers
  I want to remove an order

senario: Try to edit an order
  given I am on the "Order Management" home page
  then I should see "Orders"
  when I press "Orders"
  then I should be on the "Order Information" page
  and I should see "Order List","Show Detail","Add New","Edit","Back"
  and "Show Detail", "Add New", "Edit" is disable
  and orders in the "Order List" is sorted by time and status
  when one order in "Order List" is selected
  then "Show Detail", "Edit" is enable
  when I press "Edit"
  then I should be on the "Edit Order Detail" page
  when I press "Back"
  then I should be on the "Order Management" home page
  
senario: Try to delete an order
  given I am on the "Edit Order Detail" page
  then I should see "Ordered Menu" list, "Delete", "Back"
  when I press "Delete"
  then I should see "order deleted" page
  when I press "Back"
  then I should on "Order Information" page
  when I press "Back"
  then I should be on the "Order Information" page
