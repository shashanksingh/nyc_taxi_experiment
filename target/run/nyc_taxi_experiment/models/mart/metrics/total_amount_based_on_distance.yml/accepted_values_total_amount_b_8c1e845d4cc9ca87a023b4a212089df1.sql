select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        trip_distance_bucketed as value_field,
        count(*) as n_records

    from "dev"."main"."total_amount_based_on_distance"
    group by trip_distance_bucketed

)

select *
from all_values
where value_field not in (
    '<2','2-4','4-6','6+'
)



      
    ) dbt_internal_test