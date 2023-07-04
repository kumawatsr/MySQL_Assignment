--Taks 1 : Retrieve the CustomerName, OrderID, and TotalAmount for customers who have placed orders with a total amount greater than 200.

SELECT c.customerName,o.OrderID,o.TotalAmount from customer as c
join orders as o on c.CustomerID = o.OrderID
where o.TotalAmount> 200;

