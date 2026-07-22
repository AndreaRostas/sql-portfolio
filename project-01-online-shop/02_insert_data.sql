-- ==========================================
-- Insert Customers
-- ==========================================

INSERT INTO customers (customer_id, name, city)
VALUES
(1,'Adreienn','Puerto Rico'),
(2,'Catsro','Bahamas'),
(3,'Michi','New York');

-- ==========================================
-- Insert Products
-- ==========================================

INSERT INTO products (product_id, product_name, category, price)
VALUES
(1,'Laptop','Electronics',1200),
(2,'Phone','Electronics',25),
(3,'Chair','Furniture',180),
(4,'Desk','Furniture',350);

-- ==========================================
-- Insert Orders
-- ==========================================

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date)
VALUES
(1,1,1,1,'2026-01-10'),
(2,1,2,2,'2026-01-10'),
(3,2,4,1,'2026-02-15'),
(4,3,3,4,'2026-03-01'),
(5,2,2,3,'2026-03-08');
