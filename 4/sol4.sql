--Task 4 : Retrieve the CustomerName and TotalAmount of all customers and orders, including unmatched records from both sides.

select c.CustomerName, o.TotalAmount
from customer as c
left join orders as o on c.CustomerID=o.CustomerID
union
select c.customerName, o.TotalAmount
from orders as o 
right join customer as c on c.CustomerID=o.CustomerID;

