
with calc_employees as (
    
select
date_part(year, current_date) - date_part(year, birth_date)as age,
date_part(year, current_date) - date_part(year, hire_date)as lengthofservice,
--hire_date,
first_name|| ' ' || last_name as name_completo, *

from {{source('sources','employees')}}

)

select * from calc_employees