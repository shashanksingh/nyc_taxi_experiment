{{
    config(
        materialized='table'
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
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    congestion_surcharge
    FROM source