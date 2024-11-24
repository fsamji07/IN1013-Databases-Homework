-- 1

select cust_name, bill_date, bill_total from restBill where cust_name = "Bob Crow";

-- 2

select cust_name from restBill where cust_name LIKE "%Smith%" ORDER BY cust_name DESC;

-- 3

select distinct cust_name from restBill where cust_name LIKE "% %C%";

-- 4

select first_name, surname, headwaiter from restStaff where headwaiter IS NOT NULL;


-- 5

select * from restBill where bill_date LIKE "1602%";


-- 6

select distinct bill_date from restBill where bill_date LIKE "15%";
