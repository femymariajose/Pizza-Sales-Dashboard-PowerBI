SELECT * FROM [Pizza_DB].[dbo].[pizza_sales];

SELECT SUM(total_price) as Total_Revenue FROM pizza_sales;

SELECT  SUM(total_price) / count(distinct order_id) as Total_Revenue  FROM pizza_sales;

SELECT SUM(quantity) as Total_Pizza_Sold FROM pizza_sales;

SELECT count(distinct order_id) as Total_Order FROM pizza_sales;

SELECT  cast(CAST(SUM(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Average_Pizzas_per_order FROM pizza_sales;

Select datename(DW,order_date) as Order_day, count(distinct order_id) as  Total_orders FROM pizza_sales GROUP BY datename(DW,order_date)

Select datename(MONTH,order_date) as Month_name, count(distinct order_id) as  Total_orders FROM pizza_sales GROUP BY datename(month,order_date) ORDER BY Total_orders DESC


Select datepart(hour,order_time) as order_hours, count(distinct order_id) as  Total_orders FROM [Pizza_DB].[dbo].[pizza_sales] GROUP BY datepart(hour,order_time) ORDER BY datepart(hour,order_time)

Select pizza_category, SUM(total_price) as Total_Sales, sum(total_price) * 100 /(select SUM(total_price) as Total_Revenue FROM pizza_sales)
--where datepart(quarter, order_date) = 1)
as PCT from pizza_sales 
--where month(order_date) = 1 
--where datepart(quarter, order_date) = 1
group by pizza_category;


Select pizza_size, SUM(total_price) as Total_Sales, sum(total_price) * 100 /(select SUM(total_price) as Total_Revenue FROM pizza_sales)
as PCS from pizza_sales 
group by pizza_size
order by PCS;

select top 5 pizza_name, sum(total_price)as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc

select top 5 pizza_name, sum(total_price)as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue 


select top 5 pizza_name, sum(quantity)as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity desc

select top 5 pizza_name, sum(total_price)as Total_Quantity from [Pizza_DB].[dbo].[pizza_sales]
group by pizza_name
order by Total_Quantity 


select top 5 pizza_name, count(distinct order_id)as Total_Orders from [Pizza_DB].[dbo].[pizza_sales]
group by pizza_name
order by Total_Orders desc

select top 5 pizza_name, count(distinct order_id)as Total_Orders from [Pizza_DB].[dbo].[pizza_sales]
group by pizza_name
order by Total_Orders

Select pizza_category, SUM(total_price) as Total_Sales, sum(total_price) * 100 /(select SUM(total_price) as Total_Revenue FROM pizza_sales)
--where datepart(quarter, order_date) = 1)
as PCT from pizza_sales 
--where month(order_date) = 1 
--where datepart(quarter, order_date) = 1
group by pizza_category;