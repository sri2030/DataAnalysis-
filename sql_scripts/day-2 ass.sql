-----Q:1 For each store, display the number of customers that are members of
---that store.

select * from customer c inner join store a on c.store_id= a.store_id
where customer_id = manager_staff_id;

---2. Display the customer names that share the same address----
CREATE view customers_name
as
select *, c.first_name,c last_name,a address
from customer c inner join address a
on c.customer_id=a.address_id;

select a last_name , a first_name
from customer_name a inner join customer_name c on a.address = c.address

---3. display customer lastname, firstname whose rentalid is greater than
2500----
select *,c.first_name,c.last_name,a.customer_id
from customer c inner join  rental a
on c.customer_id=a.customer_id
where rental_id>2500;

---- Q4.Display payment amount,paymentdate of customer whose lastname is
--Miller--
SELECT * from payment

where customer_id= (select customer_id from customer where last_name like '%Miller%');

---1. Display avg of unit prices for all the categories of the products----
select productname,categoryid, avg(unitprice)
over(partition by categoryid) as avgunitprice 
from products;

----2. Display all emp details whose shippeddate greater than 1996-11-27----

select * 
from  employees a inner join orders c 
on a.employeeid = c.employeeid
where shippeddate > '1996-11-27';

----3. Display Employee firstname,Customerid whose customer is in city –
London---
select employees,first_name,customer_id 
over(partition by city) as avgunitprice 
from employees;

-----4. Display all order ids whose companyname starts with B-----

select *
from orders o inner join customers c
on o.customerid = c.customerid
where companyname like 'B%';



 