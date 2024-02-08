-- to identify the quantity in hand for Jeans in all 3 warehouse 
SELECT * FROM products WHERE product_name = 'Jeans';

--to identify which warehouse has the highest capacity
SELECT *
FROM warehouses
WHERE capacity = (SELECT MAX(capacity) FROM warehouses);

--to identify which product has lowest inventory 
SELECT *
FROM products
WHERE quantity = (SELECT MIN(quantity) FROM products);

-- to calculate total value of inventory 
SELECT SUM(price_usd * quantity_on_hand) AS total_inventory_value FROM products p
JOIN inventory i ON p.product_id = i.product_id;