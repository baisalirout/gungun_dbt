{% snapshot t_scd_type_2 %}
    {{
        config(
            target_schema='silver_cloud',
            target_database='dev_db',
            unique_key='t_id',
            strategy='check',
            check_cols=['status'],
            invalidate_hard_deletes=True,
           
        )
    }}

    select * from {{ source('s1', 'ticket') }}
 {% endsnapshot %}