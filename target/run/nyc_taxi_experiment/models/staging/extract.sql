
  
    
    

    create  table
      "dev"."main"."extract__dbt_tmp"
  
    as (
      

SELECT * FROM read_parquet('https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet')
    );
  
  