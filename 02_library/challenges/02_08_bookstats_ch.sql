-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select Published, count(distinct title) as counttitle 
from books 
group by Published
order by counttitle desc

select count(l.LoanID) as CountID, Title 
from loans l
  inner join books b on l.bookid = b.BookID
group by Title
order by CountID desc
limit 14