{{
    config(
        materialized='table'
    )
}}
select * from {{ source('s1', 'orders') }} where status='fail'