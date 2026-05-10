{%- macro cents_to_dollars(column_name, decimals=2) -%}
    -- amount is stored in cents, convert it to dollars
    round({{ column_name }} / 100, {{ decimals }})
{%- endmacro -%}