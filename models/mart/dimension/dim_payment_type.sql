{{
    config(materialized='table')
}}

WITH payment_type AS (
    SELECT
        gen_random_uuid() AS uuid,
        *
    FROM
        {{ ref('payment_type') }}
)
SELECT * FROM payment_type