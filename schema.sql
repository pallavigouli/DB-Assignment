
-- Create product_category table--
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create discount table--
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    discount_percent INT,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create product table--
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    category_id INT,
    product_inventory_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);

-- Create product_inventory table--
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    category_id INT,
    quantity INT,
    created_at TIMESTAMP,
    price DECIMAL(10, 2),
    discount_id INT,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);