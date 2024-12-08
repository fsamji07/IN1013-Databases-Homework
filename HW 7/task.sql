--1 
CREATE VIEW samsBills AS
SELECT 
    restStaff.first_name,
    restStaff.surname,
    restBill.bill_date,
    restBill.cust_name,
    restBill.bill_total
FROM restStaff
INNER JOIN restBill ON restStaff.staff_no = restBill.waiter_no
WHERE restStaff.first_name = 'Sam' 
AND restStaff.surname = 'Pitt';

--2
SELECT * 
FROM samsBills
WHERE bill_total > 400;

--3
CREATE VIEW roomTotals AS
SELECT 
    restRoom_management.room_name,
    SUM(restBill.bill_total) AS total_sum
FROM restRoom_management
INNER JOIN restBill 
ON restRoom_management.room_name = restBill.table_no
GROUP BY restRoom_management.room_name;

--4
CREATE VIEW teamTotals AS
SELECT 
    CONCAT(restStaff.first_name, ' ', restStaff.surname) AS headwaiter_name,
    SUM(restBill.bill_total) AS total_sum
FROM restRoom_management
INNER JOIN restStaff 
ON restRoom_management.headwaiter = restStaff.staff_no
INNER JOIN restBill 
ON restRoom_management.room_name = restBill.table_no
GROUP BY restStaff.staff_no;

