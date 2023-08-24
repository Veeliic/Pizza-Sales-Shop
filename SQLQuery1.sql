SELECT * FROM pizza_sales

SELECT Count(DISTINCT order_id) AS Total_Number_Of_Orders
FROM pizza_sales

SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales

SELECT SUM(total_price) / Count(DISTINCT order_id) AS Average_Order_Value
FROM pizza_sales

SELECT SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales


SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order
FROM pizza_sales

SELECT DATENAME(dw, order_date) AS Week_Day, COUNT(DISTINCT order_id) AS Total_Number_Of_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)

SELECT DATENAME(MONTH, order_date) AS Month, COUNT(DISTINCT order_id) AS Total_Number_Of_orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY COUNT(DISTINCT order_id) DESC

SELECT pizza_category, CAST(SUM(total_price) * 100 / (Select SUM(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS Perventage_Of_Total_Sales
from pizza_sales
group by pizza_category

SELECT pizza_size, CAST(SUM(total_price) * 100 / (Select SUM(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS Perventage_Of_Total_Sales
from pizza_sales
group by pizza_size

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
Group by pizza_category

SELECT TOP 5 pizza_name, SUM(total_price) as Total_Revenue
FROM pizza_sales
Group by pizza_name
ORDER BY Total_Revenue DESC

SELECT TOP 5 pizza_name, SUM(total_price) as Total_Revenue
FROM pizza_sales
Group by pizza_name
ORDER BY Total_Revenue ASC

SELECT TOP 5 pizza_name, SUM(quantity) as Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
