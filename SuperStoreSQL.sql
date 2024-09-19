SELECT
  category,
  SUM(sales) AS total_sales
FROM
  Superstore
GROUP BY
  Category
ORDER BY
  total_sales DESC;
-- Showed total sales by category type
SELECT
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  SUM(sales) AS total_sales
FROM
  Superstore
GROUP BY
  month
ORDER BY
  month;
-- Grouped total sales by month
SELECT
  region,
  category,
  SUM(sales) AS total_sales
FROM
  Superstore
GROUP BY
  region,
  category
ORDER BY
  total_sales DESC;
-- Looked at the top performing sales per region and category
SELECT
  ROUND(AVG(sales), 2) AS average_sales,
  Category,
  region
FROM
  Superstore
GROUP BY
  Category,
  region;
-- Looked into the average sale per category in each region