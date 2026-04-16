select
customerid,
segment,
country,
sum(orderprofit) as profit
from {{ ref('STAGE_ORDERS') }}
group by
customerid,
segment,
country