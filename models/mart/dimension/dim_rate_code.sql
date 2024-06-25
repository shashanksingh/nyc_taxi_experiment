{{
    config(materialized='table')
}}

WITH rate_code AS (
    SELECT
        gen_random_uuid() AS uuid,
        *
    FROM
        {{ ref('rate_code') }}
)
SELECT * FROM rate_code
