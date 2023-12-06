-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select b.Title, b.Author, Published, Barcode 
from books b 
left join loans l on b.BookID = l.BookID and l.ReturnedDate is null
where published BETWEEN 1890 and 1899
and l.LoanID is null
order by b.Title