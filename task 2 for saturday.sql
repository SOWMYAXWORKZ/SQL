create database product_info;
CREATE TABLE product_info (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT CHECK (stock_quantity >= 0),
    supplier VARCHAR(100),
    manufacture_date DATE
);

create database order_info;
CREATE TABLE order_info (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT NOT NULL,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    total_price DECIMAL(10, 2),
    status VARCHAR(50) CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled'))
);
