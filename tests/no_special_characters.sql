select *
from {{ ref('denue_1')}}
where {{ 'entidad' }} ~ '[^a-zA-Z0-9 ]'
