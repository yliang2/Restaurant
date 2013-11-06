feature: check order information
  As a waiter
  So I can check an order information
  I want to retrieve order information


senario: Try to show order information
  given I am on the "Order Management" home page
  then I should see "Orders"
  when I press "Orders"
  then I should be on the "Order Information" page
  and I should see "Order List","Show Detail","Add New","Edit","Back"
  and "Show Detail", "Add New", "Edit" is disable
  and orders in the "Order List" is sorted by time and status
  when one order in "Order List" is selected
  then "Show Detail" 
  and "Edit" are enable
  when I press "Show Detail"
  then I should be on the "Order Detail" page
  when I press "Back"
  then I should be on the "Order Management" home page
  
senario: Try to show detail of an order
  given I am on the "Order Detail" page
  then I should see "Ordered Menu"
  and "Back"
  when I press "Back"
  then I should be on the "Order Information" page
