## Fetch based on pattern or word or letter

select city 
from station 
where left(city, 1) in ('a','e','i','o','u') 
and right(city, 1) in ('a','e','i','o','u');