USE restaurant;


SELECT bill_date,bill_total FROM restBill
WHERE cust_name = 'Bob Crow';
  
SELECT DISTINCT cust_name FROM restBill
WHERE cust_name LIKE '%Smith'
ORDER BY cust_name;

SELECT DISTINCT cust_name FROM restBill
WHERE cust_name LIKE '% C%';

SELECT first_name,surname FROM restStaff
WHERE headwaiter IS NULL;

SELECT * FROM restBill
WHERE bill_date BETWEEN 160200 AND 160229;

SELECT DISTINCT bill_date FROM restBill
WHERE bill_date BETWEEN 150000 AND 151231
ORDER BY bill_date;