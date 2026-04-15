{%- set category = ["Furniture", "Office", "Technology"] -%}
select
orderid,
{%- for category in category %}
sum(case when category = '{{category}}' then orderprofit end) as {{category}}_orderprofit
{%- if not loop.last %},{% endif -%}
{% endfor %}
from {{ ref('STAGE_ORDERS') }}
group by 1