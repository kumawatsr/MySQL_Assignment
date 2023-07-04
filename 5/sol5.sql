--Task 5 : Retrieve the CustomerName and the total count of orders placed by each customer, including unmatched customers and orders

select c.customerName , count(o.customerID) as OrderCount
from customer as c
left join orders as o on c.customerID = o.customerID
group by c.customerID,c.customerName
union
select c.customerName , count(o.orderID) as OrderCount
from customer as c
right join orders as o on c.customerID = o.customerID
group by o.customerID,c.customerName;




