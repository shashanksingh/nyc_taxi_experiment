
  
    
    

    create  table
      "dev"."main"."dim_rate_code__dbt_tmp"
  
    as (
      

SELECT 1 as id , 'Standard rate' as rate_code
UNION
SELECT 2 as id , 'JFK' as rate_code
UNION
SELECT 3 as id , 'Newark' as rate_code
UNION
SELECT 4 as id , 'Nassau or Westchester' as rate_code
UNION
SELECT 5 as id , 'Negotiated fare' as rate_code
UNION
SELECT 6 as id , 'Group ride' as rate_code
    );
  
  