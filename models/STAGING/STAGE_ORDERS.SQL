

select
--from raw_orders
orderid,
orderdate,
shipdate,
shipmode,
o.customerid,
o.productid,
ordersellingprice,
ordercostprice,
--from raw_customer
customername,
segment,
country,
--from raw_product
category,
productname,
subcategory,
ordersellingprice - ordercostprice as orderprofit
from {{ ref('RAW_ORDERS') }} as o
left join {{ ref('RAW_CUSTOMERS') }} as c
on o.customerid = c.customerid
left join {{ ref('RAW_PRODUCTS') }} as p
on o.productid = p.productid