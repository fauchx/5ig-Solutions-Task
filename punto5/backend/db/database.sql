CREATE DATABASE IF NOT EXISTS orders_db;

USE orders_db;

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(50),
    rep_code VARCHAR(50),
    trade_type VARCHAR(50),
    client_account VARCHAR(50),
    sponsor VARCHAR(50),
    cusip VARCHAR(50),
    priced DECIMAL(10,2),
    emp_disc BOOLEAN,
    roll_over BOOLEAN,
    group_number VARCHAR(50),
    sponsor_fundid VARCHAR(50),
    principal_agent VARCHAR(50),
    trade_note TEXT,
    sponsor_manual VARCHAR(50)
);


