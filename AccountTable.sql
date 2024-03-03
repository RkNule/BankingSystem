CREATE TABLE IF NOT EXISTS Accounts (
    account_number BIGINT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    balance DECIMAL(15, 2) NOT NULL,
    security_pin VARCHAR(10) NOT NULL
);
