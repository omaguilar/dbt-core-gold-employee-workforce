
{# DBT custom schema name
    https://docs.getdbt.com/docs/build/custom-schemas#how-does-dbt-generate-a-models-schema-name
#}
{% macro get_envs_nodev() -%}
    {{ return (["pro","pre","itg"]) }}
{% endmacro %}


{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}

    {%- if custom_schema_name is none -%}
        {{ default_schema }}

    {%- elif target.name in get_envs_nodev() or target.schema == "mdona" -%}
        {{ custom_schema_name | trim }}
    {%- else -%}

        {{ default_schema }}_{{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}
