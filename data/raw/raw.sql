SELECT
  orders_id,
  MAX(date_date) as date_date,
  ROUND((SUM(revenue)),2) as revenue,
  ROUND(SUM(quantity),2) as quantity,
  ROUND(SUM(purchase_cost),2) as purchase_cost,
  ROUND(SUM(margin),2) as margin
FROM `le-wagon-1788`.`dbt_test_1784`.`int_sales_purchase`
GROUP BY orders_id
ORDER BY orders_id DESC