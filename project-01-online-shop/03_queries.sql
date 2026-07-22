-- Show all customers
SELECT *
FROM customers;

-- Show products alphabetically
SELECT *
FROM products
ORDER BY product_name;

-- Products from Furniture category
SELECT product_name, category
FROM products
WHERE category = 'Furniture';

-- Total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM orders
JOIN products
ON orders.product_id = products.product_id;

-- Best-selling products
SELECT
    product_name,
    SUM(quantity) AS total_sold
FROM products
JOIN orders
ON products.product_id = orders.product_id
GROUP BY product_name
ORDER BY total_sold DESC;

-- Customer spending
SELECT
    customers.name,
    SUM(products.price * orders.quantity) AS total_spent
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
JOIN products
ON orders.product_id = products.product_id
GROUP BY customers.name
ORDER BY total_spent DESC;
