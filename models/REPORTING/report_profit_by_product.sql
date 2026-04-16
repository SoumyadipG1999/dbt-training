select
    productid,
    productname,
    category,
    subcategory,
    sum(orderprofit) as profit
from {{ ref('STAGE_ORDERS') }}
group by
    productid,
    productname,
    category,
    subcategory