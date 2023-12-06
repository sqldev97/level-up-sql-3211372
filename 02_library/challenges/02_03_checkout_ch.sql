-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

select * from books where Barcode = '2855934983';
select * from loans where bookid = 11
select * from books where Barcode = '4043822646';
select * from loans where bookid = 93
select * from patrons where email = 'jvaan@wisdompets.com'
select * from loans order by loandate desc

insert into loans (bookid, patronid, LoanDate, DueDate)
values ((select bookid from books where Barcode = '2855934983'),
(select PatronID from patrons where email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08'),
((select bookid from books where Barcode = '4043822646'),
(select patronid from patrons where email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08')
