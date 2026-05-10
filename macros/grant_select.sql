{% macro grant_select( schema=target.schema, role=target.role, database=target.database ) %}
    {% set sql %}
        use database {{ database }};
        grant usage on schema {{ schema }} to role {{ role }};
        grant select on all tables in schema {{ schema }} to role {{ role }};
        grant select on all views in schema {{ schema }} to role {{ role }};
    {% endset %}

    {% do run_query(sql) %}
{% endmacro %}