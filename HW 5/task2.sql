-- 1

select sum(bill_total) as "Income" from restBill;


-- 2

select sum(bill_total) as "Feb Income" from restBill where bill_date like "1602%";


-- 3

select avg(bill_total) as "Feb Income" from restBill where bill_date like "1602%";


-- 4

select min(no_of_seats) as "Min",
max(no_of_seats) as "Max",
avg(no_of_seats) as "Avg"
from restRest_table where room_name like "Blue";


-- 5

select distinct(table_no), waiter_no from restBill where waiter_no = "2" or waiter_no = "4";

