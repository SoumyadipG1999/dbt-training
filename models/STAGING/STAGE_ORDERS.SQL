

select
--from raw_orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.customerid,
o.productid,
o.ordersellingprice,
o.ordercostprice,
--from raw_customer
c.customername,
c.segment,
c.country,
--from raw_product
p.category,
p.productname,
p.subcategory,
o.ordersellingprice - o.ordercostprice as orderprofit
from {{ ref('RAW_ORDERS') }} as o
left join {{ ref('RAW_CUSTOMERS') }} as c
on o.customerid = c.customerid
left join {{ ref('RAW_PRODUCTS') }} as p
on o.productid = p.productid