{{
    config(materialized='table')
}}

SELECT * FROM read_parquet('s3://nyc-tlc/trip data/yellow_tripdata_2021-*.parquet')