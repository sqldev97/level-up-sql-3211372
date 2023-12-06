-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select c.firstname, c.lastname, c.email, count(o.orderid) as numorders
from orders o 
inner join customers c on o.customerid = c.customerid
group by c.firstname, c.lastname, c.email
order by numorders desc
limit 6