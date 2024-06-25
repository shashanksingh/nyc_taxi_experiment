select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select trip_distance_bucketed
from "dev"."main"."total_amount_based_on_distance"
where trip_distance_bucketed is null



      
    ) dbt_internal_test