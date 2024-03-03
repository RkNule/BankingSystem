CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sender_account_number BIGINT NOT NULL,
    receiver_account_number BIGINT NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    transaction_type ENUM('credit', 'debit', 'transfer') NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_account_number) REFERENCES Accounts(account_number),
    FOREIGN KEY (receiver_account_number) REFERENCES Accounts(account_number)
);
