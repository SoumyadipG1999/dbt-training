select orderid ,
SUM(ORDERSELLINGPRICE) AS TOTAL_SP
from {{ ref('RAW_ORDERS') }}
GROUP BY orderid
HAVING TOTAL_SP<0