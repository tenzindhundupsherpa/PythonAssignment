use assignment2;

select platform, genre
from vgsales2016; 

select * from vgsales2016;

select avg(global_sales) 
from vgsales2016
where Year_of_Release<2010;

select avg(global_sales) 
from vgsales2016
where Year_of_Release>2010;


select avg(global_sales),
Case
when Year_of_Release<2010 then 'pre-2010'
else 
	'post-2010' end as Label
From vgsales2016
where Year_of_Release<2010;

select avg(global_sales),
Case
when Year_of_Release>2010 then 'post-2010'
else 
	'pre-2010' end as Label
From vgsales2016
where Year_of_Release>2010;


select avg(global_sales),
Case
when Year_of_Release<2010 then 'pre-2010'
else 
	'post-2010' end as Label
From vgsales2016
where Year_of_Release<2010
union
select avg(global_sales),
Case
when Year_of_Release>2010 then 'post-2010'
else 
	'pre-2010' end as Label
From vgsales2016
where Year_of_Release>2010;


