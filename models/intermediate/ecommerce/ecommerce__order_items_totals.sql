with order_items as (select * from {{ref("stg_ecommerce__order_items")}}),
products as (select * from  {{ref("stg_ecommerce__products")}})

select oi.order_id,
  oi.product_id,
  p.product_category,
  oi.seller_id,
  count(*) as quantity,
  round(oi.price, 2) as unit_price,
  round(sum(oi.price), 2) as total_price,
  round(oi.freight_value, 2) as unit_freight_value,
  round(sum(oi.freight_value), 2) as total_freight_value
from order_items oi
inner join products p on p.product_id = oi.product_id
group by oi.order_id, oi.product_id, oi.seller_id, oi.price, oi.freight_value, p.product_category