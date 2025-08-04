{% test no_special_characters(model) %}

select *
from {{ ref('denue_1')}}
where {{ 'entidad' }} ~ '[^a-zA-Z0-9 ]'

{% endtest %}
