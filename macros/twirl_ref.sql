{% macro twirl_ref(database_name, schema_name, table_name) -%}
{%- set name = ['TWIRL', 'TBL', database_name, schema_name, table_name]|join("_")|upper -%}
{%- set prod_name = [database_name, schema_name, table_name]|join(".") -%}
{{ env_var(name, prod_name) }}
{%- endmacro %}
