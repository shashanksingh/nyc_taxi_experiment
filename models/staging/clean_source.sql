{{
    config(
        materialized='table',
        post_hook=["CREATE INDEX idx_vendor_id on {{this}} (vendor_id)"]
    )
}}

WITH source AS (
    SELECT * FROM {{ref('extract')}}
)
SELECT VendorID as vendor_id, 
    tpep_pickup_datetime as pickup_datetime,
    tpep_dropoff_datetime as dropoff_datetime,
    passenger_count,
    trip_distance,
    RatecodeID as rate_code_id,
    store_and_fwd_flag,
    PULocationID as pickup_location_id,
    DOLocationID as dropoff_location_id,
    payment_type as payment_type_id,
    fare_amount,
    Airport_fee as airport_fee,
    *
    FROM source