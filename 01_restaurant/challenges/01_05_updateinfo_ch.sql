-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers SET Address = '74 Pine St.',
  City = 'New York', State = 'NY'
 WHERE Address = '27170 6th Ave.'

 select * from customers where address = '74 Pine St.'