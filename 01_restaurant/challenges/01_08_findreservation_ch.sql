-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT R.*
FROM Customers C 
  INNER JOIN Reservations R ON C.CustomerID = R.CustomerID
WHERE C.LastName LIKE 'STE%'
AND R.Date LIKE '%06-14%'