# SUBSTRING

Select concat(Name, '(', substring(occupation, 1,1), ')') as Name 
from occupations 
order by Name;