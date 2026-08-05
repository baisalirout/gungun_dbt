{{
    config(
        materialized='ephemeral'
    )
}}


SELECT
        customer_id,
        first_name,
        last_name
    FROM {{ source('s1', 'customers') }}
