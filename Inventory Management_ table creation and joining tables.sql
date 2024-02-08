CREATE TABLE warehouses (
    warehouse_id SERIAL PRIMARY KEY,
    warehouse_name VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    capacity INT
);

CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    product_id INT,
    warehouse_id INT,
    quantity_on_hand INT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price_usd DECIMAL(12, 2),
    quantity INT,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);

SELECT 
    p.product_id,
    p.product_name,
    p.description,
    p.price_usd,
    p.quantity AS total_quantity,
    w.warehouse_id,
    w.warehouse_name,
    w.location,
    w.capacity,
    i.quantity_on_hand AS inventory_quantity,
    i.last_updated
FROM 
    products p
JOIN 
    inventory i ON p.product_id = i.product_id
JOIN 
    warehouses w ON i.warehouse_id = w.warehouse_id;


-- Inserting values into the warehouses table
INSERT INTO warehouses (warehouse_name, location, capacity)
VALUES 
    ('FedEx', '123 Main Street, Toronto', 1000),
    ('UPS', '456 Elm Street, Toronto', 2000),
    ('DHL', '789 Oak Street, Toronto', 1500);

-- Inserting values into the products table
INSERT INTO products (product_name, description, price_usd, quantity, warehouse_id)
VALUES 
    ('Hoodies', 'Nike Black L', 10.99, 100, 1),
    ('Jackets', 'Adidas Grey XL', 15.99, 150, 2),
    ('Jeans', 'Reebok Dark Blue 34', 20.99, 200, 3);

-- Inserting values into the inventory table
INSERT INTO inventory (product_id, warehouse_id, quantity_on_hand)
VALUES 
    (1, 1, 50),
    (1, 2, 75),
    (1, 3, 100),
    (2, 1, 100),
    (2, 2, 125),
    (2, 3, 150),
    (3, 1, 150),
    (3, 2, 175),
    (3, 3, 200);
	



