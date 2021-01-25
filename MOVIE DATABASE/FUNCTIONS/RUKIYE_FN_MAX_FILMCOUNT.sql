create or replace function MAX_FILM_COUNT
(COUNTRYCODE varchar2)
return varchar2
is 
FILM_ID varchar2(50 byte);
begin
select 
FILM_ID into FILM_ID
from
(
select M.FILM_ID,count(m.fılm_ıd),
row_number() over(order by count(m.fılm_ıd) desc) as rn
from movıe m 
INNER JOIN COUNTRIES C ON M.COUNTRY_CODE = C.CODE
where M.COUNTRY_CODE = COUNTRYCODE
group by M.FILM_ID
)
where rn=1;
return FILM_ID;
end;
