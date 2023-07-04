--Task 3: Retrieve the CustomerName and the average TotalAmount of orders placed by each customer, including customers without any orders.

select c.customerName, avg(o.TotalAmount) as avg_amount
from customer as c left join orders as o 
on c.CustomerID=o.CustomerID
group by c.CustomerName;
