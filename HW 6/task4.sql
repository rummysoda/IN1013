USE restaurant;


SELECT DISTINCT b.cust_name
FROM restBill b
JOIN restRoom_management rm ON b.table_no IN (
    SELECT table_no FROM restRest_table WHERE rm.room_name = room_name
)
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE s.first_name = 'Charles' AND s.surname = 'Watson' AND b.bill_total > 450.00;

SELECT s.first_name, s.surname
FROM restRoom_management rm
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE rm.room_name = (
    SELECT room_name
    FROM restRest_table rt
    JOIN restBill b ON rt.table_no = b.table_no
    WHERE b.cust_name = 'Nerida Smith' AND b.bill_date = 160111
)
AND rm.room_date = 160111;

SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);


SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no NOT IN (SELECT waiter_no FROM restBill);


SELECT b.cust_name, hs.first_name AS headwaiter_first_name, hs.surname AS headwaiter_surname, rt.room_name
FROM restBill b
JOIN restRest_table rt ON b.table_no = rt.table_no
JOIN restRoom_management rm ON rt.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff hs ON rm.headwaiter = hs.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);
