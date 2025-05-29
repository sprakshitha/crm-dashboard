CREATE DATABASE crm_dashboard;
USE crm_dashboard;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    purchase_amount DECIMAL(10,2),
    created_at DATE
);

CREATE TABLE interactions (
    interaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    interaction_type VARCHAR(50), -- e.g., "Call", "Email", "Meeting"
    interaction_date DATE,
    notes TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO users (username, password) VALUES 
('admin', MD5('admin123'));

INSERT INTO customers (name, email, purchase_amount, created_at) VALUES 
('John Doe' ,'john@example.com', 120.50, '2023-12-01'),
('Jane Smith', 'jane@example.com', 300.00, '2024-01-15'),
('Alex Green','alex@example.com', 450.00, '2024-02-20');

