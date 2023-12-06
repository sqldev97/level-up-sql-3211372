-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select L.DueDate , b.Title, P.FirstName, P.LastName, P.Email
from loans L
  inner join books b on l.BookID = b.BookID
  inner join Patrons p on l.PatronID = p.PatronID
where L.duedate = '2022-07-13' and L.returneddate is null