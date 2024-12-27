-- Create the database
CREATE DATABASE IF NOT EXISTS business_management;

-- Use the created database
USE business_management;

-- Create the 'users' table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the 'orders' table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    quantity INT DEFAULT 1,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create the 'api_logs' table
CREATE TABLE api_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    endpoint VARCHAR(255) NOT NULL,
    response_status INT NOT NULL,
    response_time FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into 'users' table
INSERT INTO users (username, password, role) VALUES
('admin', 'admin123', 'admin'),
('user1', 'user123', 'user'),
('user2', 'password123', 'user');

-- Insert sample data into 'orders' table
INSERT INTO orders (user_id, product_name, quantity) VALUES
(1, 'Laptop', 2),
(2, 'Phone', 5),
(3, 'Tablet', 3);

-- Insert sample data into 'api_logs' table
INSERT INTO api_logs (endpoint, response_status, response_time) VALUES
('/api/users', 200, 0.34),
('/api/orders', 200, 0.45);
