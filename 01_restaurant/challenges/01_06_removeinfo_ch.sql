-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select * from customers where FirstName = 'Norby'
select * from reservations where CustomerID = 64 and ReservationID = 2000
delete from Reservations where ReservationID = 2000
select * from reservations where CustomerID = 64 and ReservationID = 2000
