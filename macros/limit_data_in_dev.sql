{% macro limit_data_in_dev(column_name, dev_days = 4) %}

{% if target.name == 'target' %}
where {{ column_name }} >= dateadd('day', - {{ dev_days }}, current_timestamp) 
{% endif %}

{% endmacro %}