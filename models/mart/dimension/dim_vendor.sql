{{
    config(materialized='table')
}}

WITH vendor AS (
    SELECT
        gen_random_uuid() AS uuid,
        *
    FROM
        {{ ref('vendor') }}
)
SELECT * FROM vendor
