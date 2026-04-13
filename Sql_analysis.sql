select *
from pizza_sales

select sum(total_price) as Total_Revenue
from pizza_sales

select sum(total_price) / count(distinct order_id) as average_order_value
from pizza_sales

select sum(quantity) as total_order
from pizza_sales

select round(sum(quantity)/count(distinct order_id),2) as avg_pizza
from pizza_sales

SELECT 
TRIM(TO_CHAR(order_date, 'month')) AS order_month,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY 
order_month,
EXTRACT(month FROM order_date)
ORDER BY 
EXTRACT(month FROM order_date);

SELECT 
pizza_size,
SUM(total_price) AS size_sales,

    SUM(total_price) * 100/ 
    (SELECT SUM(total_price) FROM pizza_sales)
 AS percentage
FROM pizza_sales
GROUP BY pizza_size
order by pizza_size;

select pizza_category,
sum(quantity) as total_sold,(select sum(quantity) as total_sales
from pizza_sales)
from pizza_sales
group by pizza_category 
order by total_sold asc;

select pizza_category,
 round(sum(total_price)::numeric,2) as total_revenue,
 round(sum(quantity)::numeric,2) as total_quantity_sold,
 round(sum(order_id)::numeric,2) as total_order
from pizza_sales
group by pizza_category
order by total_order,total_quantity_sold,total_revenue
limit 5;

select pizza_name,
 round(sum(total_price)::numeric,2) as total_revenue,
 round(sum(quantity)::numeric,2) as total_quantity_sold,
 round(sum(order_id)::numeric,2) as total_order
from pizza_sales
group by pizza_name
order by total_order,total_quantity_sold,total_revenue
limit 5;

select pizza_size,pizza_name,pizza_category,
 round(sum(total_price)::numeric,2) as total_revenue,
 round(sum(quantity)::numeric,2) as total_quantity_sold,
 count(distinct order_id) as total_order
from pizza_sales
group by pizza_size,pizza_name,pizza_category
order by total_order desc ,
 total_quantity_sold  desc,
 total_revenue desc
limit 5;



