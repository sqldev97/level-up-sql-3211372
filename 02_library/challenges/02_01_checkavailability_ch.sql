-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select (
select count(*) as Dracula from books where title = 'Dracula')
-
(select count(*) as checkedout from loans where bookid in (select bookid from books where title = 'Dracula')
and ReturnedDate IS NULL) AS AvailableDracula

