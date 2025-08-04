select 
entidad, 
codigo_act,
total
from (
    select entidad,
    codigo_act,
    count(*) as total
    row_number() over (partition by entidad order by  count(*) desc) as rn
    from denue_upload
    group by entidad, codigo_act
) sub
where rn = 1
order by entidad