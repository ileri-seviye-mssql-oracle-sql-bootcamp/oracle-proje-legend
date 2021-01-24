create or replace function most_watched_film
(genrename varchar2)
return varchar2
is 
FILM_NAME varchar2(100 byte);
begin
select 
NAME into FILM_NAME
from
(
select m.NAME,
row_number() over(order by popularity desc) as rn
from movie m
INNER JOIN genres g on m.genre_id = g.genre_id
where g.genre_name=genrename
)
where rn=1;
return FILM_NAME;
end;

select most_watched_film('Action') from dual;