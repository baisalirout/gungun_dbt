{% snapshot t_scd_type_2 %}

{{
    config(
        target_database='DEV_DB',
        target_schema='SILVER_CLOUD',
        unique_key='t_id',
        strategy='check',
        check_cols=['status']
    )
}}

select *
from {{ source('s1', 'ticket') }}

{% endsnapshot %}
