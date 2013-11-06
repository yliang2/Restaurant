features: update orders
  As a waiters
  So I can update an order for customers
  I want to update an existing order

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
  
senario: Try to update an order (successful)
  given I am on the "Edit Order Detail" page
  then I should see "Ordered Menu" list, "Save", "Back"
  when I press "Save"
  then I should see "Order Updated" page
  when I press "Back"
  then I should be on "Order Information" page
  
senario: Try to update an order (failure)
  given I am on the "Edit Order Detail" page
  then I should see "Ordered Menu" list, "Save", "Back"
  when I press "Save"
  then I should see "Order fail to Update" page
  when I press "Back to Edit"
  then I should be on "Edit Order Detail" page
