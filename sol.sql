Taks 1 :- Retrieve the CustomerName, OrderID, and TotalAmount for customers who have placed orders with a total amount greater than 200.

SELECT c.customerName,o.OrderID,o.TotalAmount from customer as c
join orders as o on c.CustomerID = o.OrderID
where o.TotalAmount> 200;

Task 2 :- Retrieve the CustomerName and the count of orders placed by each customer, including customers who have not placed any orders.

SELECT c.customerName , COUNT(o.orderID) AS count_of_orders
FROM customer as c
LEFT JOIN orders as o ON c.customerID = o.customerID
GROUP BY c.customerName;

Task 3:- Retrieve the CustomerName and the average TotalAmount of orders placed by each customer, including customers without any orders.

select c.customerName, avg(o.TotalAmount) as avg_amount
from customer as c left join orders as o 
on c.CustomerID=o.CustomerID
group by c.CustomerName;


Task 4 :- Retrieve the CustomerName and TotalAmount of all customers and orders, including unmatched records from both sides.

select c.CustomerName, o.TotalAmount
from customer as c
left join orders as o on c.CustomerID=o.CustomerID
union
select c.customerName, o.TotalAmount
from orders as o 
right join customer as c on c.CustomerID=o.CustomerID;

Task 5 :- Retrieve the CustomerName and the total count of orders placed by each customer, including unmatched customers and orders

select c.customerName , count(o.customerID) as OrderCount
from customer as c
left join orders as o on c.customerID = o.customerID
group by c.customerID,c.customerName
union
select c.customerName , count(o.orderID) as OrderCount
from customer as c
right join orders as o on c.customerID = o.customerID
group by o.customerID,c.customerName;




