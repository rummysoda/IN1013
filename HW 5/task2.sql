USE restaurant;


SELECT SUM(bill_total) AS "Income" FROM restBill;

SELECT SUM(bill_total) AS "Feb Income" FROM restBill
WHERE bill_date > 160200;

SELECT AVG(bill_total) FROM restBill;
WHERE table_no = 2;

SELECT MIN(no_of_seats) AS Min,MAX(no_of_seats) AS Max,AVG(no_of_seats) AS Avg FROM restRest_table
WHERE room_name = 'Blue';

SELECT COUNT(table_no) FROM restBill
WHERE waiter_no IN (4,2);