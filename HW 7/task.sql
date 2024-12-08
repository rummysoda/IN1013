-- 1
CREATE VIEW samsBills AS
SELECT waiter_first_name AS first_name, waiter_surname AS surname, date AS bill_date, customer_name AS cust_name, total AS bill_total
FROM bills
WHERE waiter_first_name = 'Sam' AND waiter_surname = 'Pitt';

---2
SELECT * FROM samsBills
WHERE bill_total > 400;

---3
CREATE VIEW roomTotals AS
SELECT room_name, SUM(amount) AS total_sum
FROM rooms
GROUP BY room_name;

---4
CREATE VIEW teamTotals AS
SELECT CONCAT(first_name,' ',surname) AS headwaiter_name, SUM(sales) AS total_sum
FROM waitstaff
GROUP BY first_name, surname;


 
