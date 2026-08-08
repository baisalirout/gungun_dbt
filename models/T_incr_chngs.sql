{{
    config(
        materialized='incremental',
        unique_key='EMPNO'
    )
}}
select * from {{ source('s1', 'emp') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where d_upd_date > (select max(d_upd_date) from {{ this }}) 
{% endif %}