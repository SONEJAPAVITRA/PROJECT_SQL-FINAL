-- Total Revenue: The sum of the total price of all pizza orders?
SELECT SUM(total_price) AS total_revenue
FROM pizzasales;


-- Average Order Value: The average amount spent per order?
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_Order_Value 
FROM pizzasales;

-- Total Pizzas Sold: The sum of the quantities of all pizza sold?
SELECT SUM(quantity) AS Total_Pizza_Sold 
FROM pizzasales;

-- Total Orders: The total number of orders placed?
SELECT COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizzasales;

-- Average Pizza Per Order: The average number of pizzas sold per order?
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_Per_Order
FROM pizzasales;
