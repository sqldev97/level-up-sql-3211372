-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select count(l.PatronID) patronidcount , p.FirstName, p.LastName, p.Email
from loans l 
inner join Patrons p on l.PatronID = p.PatronID 
group by l.PatronID 
order by count(l.PatronID) limit 9