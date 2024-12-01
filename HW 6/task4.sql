--1
SELECT DISTINCT restBill.cust_name
FROM restBill
INNER JOIN restStaff 
ON restBill.waiter_no = restStaff.staff_no
INNER JOIN restRoom_management 
ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restBill.bill_total > 450.00
AND restStaff.first_name = 'Charles';

--2
SELECT restStaff.first_name, restStaff.surname
FROM restBill
INNER JOIN restRoom_management 
ON restRoom_management.room_name = restBill.table_no
INNER JOIN restStaff 
ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restBill.cust_name LIKE 'Nerida%'
AND restBill.bill_date = 160111;

--3
SELECT restBill.cust_name
FROM restBill
WHERE restBill.bill_total = (SELECT MIN(bill_total) FROM restBill);

--4
SELECT restStaff.first_name, restStaff.surname
FROM restStaff
LEFT JOIN restBill
ON restStaff.staff_no = restBill.waiter_no
WHERE restBill.waiter_no IS NULL;

--5
SELECT restBill.cust_name, restRoom_management.room_name, restStaff.first_name, restStaff.surname
FROM restBill
INNER JOIN restRoom_management ON restRoom_management.room_name = restBill.table_no
INNER JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restBill.bill_total = (SELECT MAX(bill_total) FROM restBill);

