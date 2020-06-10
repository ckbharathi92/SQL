# Case 

select (case when ((A+B) <= C) or ((A+C) <= B) or ((C+B) <= A) then 'Not A Triangle'
             when A=B and B=C then 'Equilateral' 
             when A=B  or A=C or C=B  then 'Isosceles'
             when (A != B) or (B !=C) or (A !=C ) then 'Scalene'
        end ) 
from triangles  

# Case with CONCAT

select 
        case 
			when occupation = 'Actor' then concat('There are a total of ', count, ' ',lower(occupation), 's')
			when occupation = 'Doctor' then concat('There are a total of ', count, ' ',lower(occupation), 's')
			when occupation = 'Singer' then concat('There are a total of ', count, ' ',lower(occupation), 's')
			when occupation = 'Professor' then concat('There are a total of ', count, ' ',lower(occupation), 's')
        end
from (	
        select  occupation, 
                count(occupation) as count 
        from occupations 
        group by occupation ) a
order by count, occupation;