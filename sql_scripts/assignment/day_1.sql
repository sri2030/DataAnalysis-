---- Q-1) distint district from address---------
SELECT	DISTINCT district
FROM
	address
ORDER BY
	district;
--------Q-2) actors name end with e-------
SELECT
	
        last_name
FROM
	actor
  WHERE  last_name like	'%e'
 ORDER BY 
        last_name;
-------Q-3) displaying movies with drama keyword-----
SELECT
	description
	from film
WHERE
	description like '%Drama%'
order by 																					
        film;
		
--------Q:4)  finding all movies which have title length =20 letters----
SELECT
  title
  from 
  film
  where length(title)  =20
  order by
  film;
    -----Q:5) display movies by title length order----
  select
  length(title)
  from
  film
  ORDER by
  length(title);
 ------Q:6)Find out average rental duration of all movies
select
avg(rental_duration)
from film;
Q:7 --------------- replacement cost of first five rows
SELECT
 replacement_cost
 from 
 film
 fetch first 5 ROWS only;

Q :8  --------------------movies with special features in trailers--------------

SELECT * from film
where special_features = '{Trailers}'

Q:9)-------display top 10 recently updated movies----

select last_update
from 
film
FETCH first 10 rows only;
 
  