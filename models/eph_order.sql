{{
    config(
        materialized='ephemeral'
    )
}}
select customer_id, order_id,
order_date, status
 from {{ source('s1', 'orders') }}