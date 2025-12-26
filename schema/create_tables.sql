-- Business SQL Analysis: Core Schema
-- Designed for common business reporting and operational questions.

CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  full_name   TEXT NOT NULL,
  email       TEXT UNIQUE,
  city        TEXT,
  state       TEXT,
  signup_date DATE
);

CREATE TABLE products (
  product_id   INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL,
  category     TEXT NOT NULL,
  unit_price   DECIMAL(10,2) NOT NULL
);

CREATE TABLE orders (
  order_id     INTEGER PRIMARY KEY,
  customer_id  INTEGER NOT NULL,
  order_date   DATE NOT NULL,
  channel      TEXT,         -- e.g., Online, In-Store
  status       TEXT,         -- e.g., Completed, Returned, Cancelled
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
  order_item_id INTEGER PRIMARY KEY,
  order_id      INTEGER NOT NULL,
  product_id    INTEGER NOT NULL,
  quantity      INTEGER NOT NULL,
  unit_price    DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
