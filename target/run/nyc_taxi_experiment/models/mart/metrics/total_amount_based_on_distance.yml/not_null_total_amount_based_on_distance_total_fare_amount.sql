select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select total_fare_amount
from "dev"."main"."total_amount_based_on_distance"
where total_fare_amount is null



      
    ) dbt_internal_test