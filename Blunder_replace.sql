

-- Find the blunder 
-- The initial table looks like 

-- 1	"Kristeen"	1420
-- 2	"Ashley"	2006
-- 3	"Julia"	    2210
-- 4	"Maria"	    3000

-- while making a report by mistake the zeros are missing and the entries look like 

-- 1	"Kristeen"	142
-- 2	"Ashley"	26
-- 3	"Julia"	    221
-- 4	"Maria"	    3

-- Find the average differnece between the original salary and the mis-entered value
  
select avg(avg_sal) - avg(cast(replace_sal as int)) as Blunder
from (
	   select  cast(salary as int) as avg_sal, 
		       replace(cast(salary as varchar), '0', '') as replace_Sal  
	    from employee_Salary 
        group by salary 
    ) as B

--- the Output will be
--- 2061 (The average difference between the two values)