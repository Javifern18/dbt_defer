{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

        {%- if target.name == 'default' -%}
            {{ default_schema }}_{{ custom_schema_name | trim }}

        {%- elif target.name == 'dev' -%} dev_jfm_gold_db
            {{ custom_schema_name | trim }}

        {%- elif target.name == 'pre' -%} pre_jfm_gold_db
            {{ custom_schema_name | trim }}

        {%- elif target.name == 'pro' -%} pro_jfm_gold_db
            {{ custom_schema_name | trim }}
            
        {%- endif -%}

    {%- endif -%}

{%- endmacro %}