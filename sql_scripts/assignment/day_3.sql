------1. Display PRODUCTID, CATEGORYID, MIN UNITPRICE by Categoryid of the Products---------
select productid,categoryid,min(unitprice) 
over(partition by categoryid)
as min_unit_price from products;
----2. Display orderid,max of quantity by orderid whose max quantity is less than 30-----
create view maxquantity_1 as
select orderid,max(quantity) over(partition by orderid )
as max_quantity from order_details
select orderid,max_quantity
from maxquantity_1
where max_quantity<30

----3. Display productid,orderid,sum of quantity by orderid of the orderdetails-----
select productid, orderid,sum(quantity) 
over(partition by orderid) as sum_quantity from order_details

----4. Create a view as served_cities to display employeeid,orderid and city------
create view  served_cities AS
select employeeid,orderid,shipcity from orders 
select* from served_cities

-DVD RENTAL---
-----1. Display firstname of staff and customer as person_name without missing all the entries---
select first_name from staff
union all
select first_name from customer
----2. Display cityid’s having same countryid----

select city_id, country_id
from city
where city_id = country_id;
-----3. Display the actors firstname,lastname of their film title starts with C and D----
 select first_name, last_name,title
from actor a inner join film_actor f1 
on a.actor_id = f1.actor_id inner join film f2
on f1.film_id = f2.film_id 
where title like 'C%' or title like 'D%';

----4. create view for the question 3 and get the count of actors acted in each film-----
create view actors_info as
select first_name, last_name,title
from actor a inner join film_actor f1 
on a.actor_id = f1.actor_id inner join film f2
on f1.film_id = f2.film_id 
where title like 'C%' or title like 'D%';

select title,count(*)
from actors_info group by title;