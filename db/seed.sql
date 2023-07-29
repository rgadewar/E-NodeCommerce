USE ecommerce_db
-- Categories
INSERT INTO categories (category_name) VALUES
  ('Electronics'),
  ('Clothing'),
  ('Books'),
  ('Toys');

-- Tags
INSERT INTO tags (tag_name) VALUES
  ('Electronics'),
  ('Fashion'),
  ('Technology'),
  ('Kids');

-- Products
INSERT INTO products (product_name, price, stock, category_id) VALUES
  ('Laptop', 999.99, 10, 1),
  ('Smartphone', 699.99, 20, 1),
  ('T-shirt', 19.99, 50, 2),
  ('Jeans', 39.99, 30, 2),
  ('Book - Title 1', 9.99, 100, 3),
  ('Book - Title 2', 12.99, 80, 3),
  ('Toy Car', 14.99, 200, 4),
  ('Doll', 24.99, 150, 4);

-- ProductTag associations
INSERT INTO product_tags (product_id, tag_id) VALUES
  (1, 1), -- Laptop - Electronics
  (1, 3), -- Laptop - Technology
  (2, 1), -- Smartphone - Electronics
  (2, 3), -- Smartphone - Technology
  (3, 2), -- T-shirt - Fashion
  (4, 2), -- Jeans - Fashion
  (5, 4), -- Book - Title 1 - Kids
  (6, 4), -- Book - Title 2 - Kids
  (7, 4), -- Toy Car - Kids
  (8, 4); -- Doll - Kids
