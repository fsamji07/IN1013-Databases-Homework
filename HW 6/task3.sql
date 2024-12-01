-- 1
SELECT restStaff.first_name, restStaff.surname
FROM restBill
INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
WHERE restBill.cust_name = 'Tanya Singh';

--2
SELECT restRoom_management.room_date
FROM restRoom_management
INNER JOIN restStaff 
ON restRoom_management.headwaiter = restStaff.staff_no
WHERE restStaff.first_name = 'Charles'
AND restRoom_management.room_name = 'Green'
AND restRoom_management.room_date LIKE '1602%'

--3
SELECT restStaff.first_name, restStaff.surname
FROM restStaff
INNER JOIN restStaff AS restStaff1
ON restStaff.headwaiter = restStaff1.headwaiter
WHERE restStaff1.first_name = 'Zoe' 
AND restStaff1.surname = 'Ball'
AND restStaff.staff_no != restStaff1.staff_no;

--4
SELECT restBill.bill_total, restBill.cust_name, restStaff.first_name, restStaff.surname
FROM restBill
INNER JOIN restStaff 
ON restBill.waiter_no = restStaff.staff_no
ORDER BY restBill.bill_total DESC;

--5
SELECT DISTINCT restStaff.first_name, restStaff.surname
FROM restBill
INNER JOIN restBill AS restBill2 
ON restBill.table_no = restBill2.table_no
INNER JOIN restStaff
ON restBill2.waiter_no = restStaff.staff_no
WHERE restBill.bill_no IN (00014, 00017)
AND restBill.waiter_no != restBill2.waiter_no;

--6
SELECT restStaff.first_name, restStaff.surname
FROM restRoom_management
INNER JOIN restRest_table 
ON restRoom_management.room_name = restRest_table.room_name
INNER JOIN restBill 
ON restRest_table.table_no = restBill.table_no
INNER JOIN restStaff 
ON restBill.waiter_no = restStaff.staff_no
WHERE restRoom_management.room_name = 'Blue'
AND restRoom_management.room_date = 160312
AND (restBill.waiter_no = restStaff.staff_no OR restRoom_management.headwaiter = restStaff.staff_no);



