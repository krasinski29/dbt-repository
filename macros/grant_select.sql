{% macro grant_select(schema=target.schema, role=target.role) %}

    {% set query %}
        grant usage on schema {{ schema }} to the role {{ role }};
        grant usage on all tables in schema  {{ schema }} to the role {{ role }};
        grant usage on all views in schema  {{ schema }} to the role {{ role }};
    {% endset %}

    {{ log('Granting select on all tables and views in schema '
     ~ target.schema ~ ' to role ' ~ role, info=True) }}
    {% do run_query(sql) %}
    {{ log('Privileges granted', info=True) }}

{% endmacro %}