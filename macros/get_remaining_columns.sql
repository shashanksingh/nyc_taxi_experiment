{% macro get_remaining_columns(source_table, excluded_columns) %}
    {%- set columns = adapter.get_columns_in_relation(source_table) %}
    {%- set excluded_columns = excluded_columns | map('lower') | list %}

    {%- for column in columns %}
        {%- if column.name.lower() not in excluded_columns %}
            {{ column.name }}{% if not loop.last %}, {% endif %}
        {%- endif %}
    {%- endfor %}
{% endmacro %}

