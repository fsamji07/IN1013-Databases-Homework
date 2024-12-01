--1
SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*) AS num_bills
FROM restBill
INNER JOIN restStaff 
ON restBill.waiter_no = restStaff.staff_no
GROUP BY restStaff.first_name, restStaff.surname, restBill.bill_date
HAVING COUNT(*) >= 2;

--2
SELECT restRoom_management.room_name, COUNT(*) AS num_tables
FROM restRest_table
INNER JOIN restRoom_management
ON restRest_table.room_name = restRoom_management.room_name
WHERE restRest_table.no_of_seats > 6
GROUP BY restRoom_management.room_name;

--3
SELECT restRoom_management.room_name, SUM(restBill.bill_total) AS total_bills
FROM restRoom_management
INNER JOIN restBill ON restBill.table_no = restRoom_management.room_name
GROUP BY restRoom_management.room_name;

--4
SELECT restStaff.first_name, restStaff.surname, SUM(restBill.bill_total) AS total_bill_amount
FROM restRoom_management
INNER JOIN restStaff
ON restRoom_management.headwaiter = restStaff.staff_no
INNER JOIN restBill
ON restBill.waiter_no = restStaff.staff_no
GROUP BY restStaff.first_name, restStaff.surname
ORDER BY total_bill_amount DESC;

--5
SELECT restBill.cust_name
FROM restBill
GROUP BY restBill.cust_name
HAVING AVG(restBill.bill_total) > 400;

--6
SELECT restStaff.first_name, restStaff.surname, restBill.bill_date, COUNT(*) AS num_bills
FROM restBill
INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no
GROUP BY restStaff.first_name, restStaff.surname, restBill.bill_date
HAVING COUNT(*) >= 3;
