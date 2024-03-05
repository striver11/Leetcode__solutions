/* Write your PL/SQL query statement below */

select id,movie,description,rating
from Cinema
where description not like '%boring%' and round(mod(id,2))!=0 order by rating desc;