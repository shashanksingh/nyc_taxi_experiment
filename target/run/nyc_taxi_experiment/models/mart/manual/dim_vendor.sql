
  
    
    

    create  table
      "dev"."main"."dim_vendor__dbt_tmp"
  
    as (
      

SELECT  1 as id, 'Creative Mobile Technologies, LLC' as name
UNION
SELECT 2 as id, 'VeriFone Inc.' as name
    );
  
  