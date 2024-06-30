 EX1
SELECT
    SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
    SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;
EX2 
select 
x, y,z,
case 
when x + y > z and z + z > y and y + z > x then 'Yes'
end as triangle
from 
Triangle;
EX3 
select
    ROUND(
        100.0 * SUM(CASE WHEN call_category IS NULL OR call_category = 'n/a' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS uncategorised_call_pct
from
    callers;
EX4 
select
    name
from
    Customer
where
    referee_id IS DISTINCT FROM 2;

EX5 
SELECT
    CASE 
        WHEN pclass = 1 THEN 'first_class'
        WHEN pclass = 2 THEN 'second_class'
        WHEN pclass = 3 THEN 'third_class'
    END AS class,
    SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS survivors,
    SUM(CASE WHEN survived = 0 THEN 1 ELSE 0 END) AS non_survivors
FROM
    titanic
GROUP BY
    pclass;

