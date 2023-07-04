--Task 2 : Retrieve the CustomerName and the count of orders placed by each customer, including customers who have not placed any orders.

SELECT c.customerName , COUNT(o.orderID) AS count_of_orders
FROM customer as c
LEFT JOIN orders as o ON c.customerID = o.customerID
GROUP BY c.customerName;
