create database loan_details;

CREATE TABLE loan_details (
    loan_id INT PRIMARY KEY,
    cust_id INT,
    loan_amount DECIMAL(15, 2),
    loan_type VARCHAR(50),
    loan_start_date DATE,
    loan_end_date DATE,
    loan_interest_rate DECIMAL(5, 2),
    loan_status VARCHAR(20),
    loan_payment_due DATE,
    loan_outstanding_amount DECIMAL(15, 2),
    FOREIGN KEY (cust_id) REFERENCES cust_details(cust_id)
);

desc loan_details;

ALTER TABLE loan_details
ADD CONSTRAINT unique_loan_type_cust UNIQUE (loan_type, cust_id);

INSERT INTO loan_details (loan_id, cust_id, loan_amount, loan_type, loan_start_date, loan_end_date, loan_interest_rate, loan_status, loan_payment_due, loan_outstanding_amount)
VALUES
(1, 1, 10000.00, 'Home Loan', '2023-01-01', '2033-01-01', 5.5, 'Active', '2024-01-01', 9500.00),
(2, 2, 15000.00, 'Car Loan', '2023-06-01', '2028-06-01', 3.8, 'Active', '2024-06-01', 14500.00),
(3, 3, 20000.00, 'Personal Loan', '2022-03-01', '2027-03-01', 4.2, 'Active', '2024-03-01', 18000.00),
(4, 4, 25000.00, 'Home Loan', '2021-07-01', '2031-07-01', 5.0, 'Active', '2024-07-01', 23000.00),
(5, 5, 12000.00, 'Car Loan', '2023-02-01', '2028-02-01', 3.6, 'Active', '2024-02-01', 11500.00),
(6, 6, 17000.00, 'Personal Loan', '2022-05-01', '2027-05-01', 4.5, 'Active', '2024-05-01', 16000.00),
(7, 7, 18000.00, 'Home Loan', '2020-11-01', '2030-11-01', 5.3, 'Active', '2024-11-01', 17000.00),
(8, 8, 14000.00, 'Car Loan', '2023-08-01', '2028-08-01', 3.7, 'Active', '2024-08-01', 13000.00),
(9, 9, 22000.00, 'Personal Loan', '2021-04-01', '2026-04-01', 4.0, 'Active', '2024-04-01', 20000.00),
(10, 10, 16000.00, 'Home Loan', '2019-12-01', '2029-12-01', 5.6, 'Active', '2024-12-01', 15000.00),
(11, 11, 13000.00, 'Car Loan', '2022-09-01', '2027-09-01', 3.9, 'Active', '2024-09-01', 12500.00),
(12, 12, 21000.00, 'Personal Loan', '2020-06-01', '2025-06-01', 4.3, 'Active', '2024-06-01', 19000.00),
(13, 13, 19000.00, 'Home Loan', '2018-10-01', '2028-10-01', 5.4, 'Active', '2024-10-01', 18000.00),
(14, 14, 23000.00, 'Car Loan', '2021-01-01', '2026-01-01', 3.5, 'Active', '2024-01-01', 22000.00),
(15, 15, 17000.00, 'Personal Loan', '2022-07-01', '2027-07-01', 4.6, 'Active', '2024-07-01', 16000.00);

select * from loan_details;