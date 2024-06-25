{{
    config(materialized='table')
}}

WITH source AS (
    SELECT * FROM {{ref('extract')}}
)
SELECT