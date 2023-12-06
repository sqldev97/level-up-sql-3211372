-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select * from customers where address = '6939 Elka Place'
select * from Dishes order by name
select * from orders order by OrderDate desc
insert into orders (customerid, OrderDate)
select CustomerID, '2022-09-20 14:00:00' from customers where address = '6939 Elka Place'
select * from OrdersDishes where orderid = 1001

insert into OrdersDishes ( OrderID, DishID)
select o.orderid, d.DishID 
from orders o 
  Inner join customers c on o.CustomerID = c.CustomerID
  inner join (select dishid from Dishes where name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')) d
where c.address = '6939 Elka Place'

select sum(d.price) from OrdersDishes od inner join Dishes d on od.DishID = d.DishID where od.orderid = 1001
