-- Sample data for Business SQL Analysis project

INSERT INTO customers (customer_id, full_name, email, city, state, signup_date) VALUES
(1, 'Alice Johnson', 'alice@example.com', 'New York', 'NY', '2023-01-15'),
(2, 'Brian Smith', 'brian@example.com', 'Chicago', 'IL', '2023-02-03'),
(3, 'Carla Gomez', 'carla@example.com', 'Austin', 'TX', '2023-03-22');

INSERT INTO products (product_id, product_name, category, unit_price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Wireless Mouse', 'Electronics', 25.00),
(3, 'Office Chair', 'Furniture', 300.00);

INSERT INTO orders (order_id, customer_id, order_date, channel, status) VALUES
(1, 1, '2023-04-01', 'Online', 'Completed'),
(2, 2, '2023-04-05', 'In-Store', 'Completed'),
(3, 3, '2023-04-10', 'Online', 'Returned');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 2, 2, 25.00),
(3, 2, 3, 1, 300.00),
(4, 3, 2, 1, 25.00);
