create database cust_details;

CREATE TABLE cust_details (
    cust_id INT PRIMARY KEY,
    bank_id INT,
    cust_name VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_zipcode VARCHAR(10),
    cust_phone VARCHAR(15),
    cust_email VARCHAR(100),
    cust_dob DATE,
    cust_ssn VARCHAR(20),
    FOREIGN KEY (bank_id) REFERENCES bank_details(bank_id)
);

desc cust_details;

ALTER TABLE cust_details
ADD CONSTRAINT unique_cust_email UNIQUE (cust_email);

desc cust_details;

INSERT INTO cust_details (cust_id, bank_id, cust_name, cust_address, cust_city, cust_state, cust_zipcode, cust_phone, cust_email, cust_dob, cust_ssn)
VALUES
(1, 1, 'John Doe', '789 Oak St', 'CityX', 'StateY', '12345', '555-7890', 'john.doe@example.com', '1980-01-01', 'SSN123456789'),
(2, 2, 'Jane Smith', '321 Pine St', 'CityY', 'StateZ', '67890', '555-4321', 'jane.smith@example.com', '1985-02-02', 'SSN987654321'),
(3, 3, 'Bob Johnson', '654 Cedar St', 'CityZ', 'StateA', '54321', '555-6543', 'bob.johnson@example.com', '1975-03-03', 'SSN123123123'),
(4, 4, 'Alice Brown', '987 Spruce St', 'CityA', 'StateB', '98765', '555-8765', 'alice.brown@example.com', '1990-04-04', 'SSN987987987'),
(5, 5, 'Charlie Davis', '135 Maple St', 'CityB', 'StateC', '56789', '555-6789', 'charlie.davis@example.com', '1983-05-05', 'SSN456456456'),
(6, 6, 'Diana Evans', '246 Birch St', 'CityC', 'StateD', '23456', '555-7890', 'diana.evans@example.com', '1988-06-06', 'SSN789789789'),
(7, 7, 'Frank Green', '357 Ash St', 'CityD', 'StateE', '67812', '555-8901', 'frank.green@example.com', '1979-07-07', 'SSN654654654'),
(8, 8, 'Grace Harris', '468 Willow St', 'CityE', 'StateF', '78923', '555-9012', 'grace.harris@example.com', '1992-08-08', 'SSN321321321'),
(9, 9, 'Henry Clark', '579 Poplar St', 'CityF', 'StateG', '89034', '555-0123', 'henry.clark@example.com', '1977-09-09', 'SSN987654321'),
(10, 10, 'Ivy Lewis', '680 Palm St', 'CityG', 'StateH', '90145', '555-1234', 'ivy.lewis@example.com', '1995-10-10', 'SSN123987654'),
(11, 11, 'Jack Walker', '791 Fir St', 'CityH', 'StateI', '01256', '555-2345', 'jack.walker@example.com', '1981-11-11', 'SSN654987321'),
(12, 12, 'Karen Young', '902 Cedar St', 'CityI', 'StateJ', '12367', '555-3456', 'karen.young@example.com', '1993-12-12', 'SSN987321654'),
(13, 13, 'Leo Adams', '013 Elm St', 'CityJ', 'StateK', '23478', '555-4567', 'leo.adams@example.com', '1986-01-13', 'SSN321654987'),
(14, 14, 'Mia Wright', '124 Maple St', 'CityK', 'StateL', '34589', '555-5678', 'mia.wright@example.com', '1991-02-14', 'SSN654123789'),
(15, 15, 'Nate Hill', '235 Oak St', 'CityL', 'StateM', '45690', '555-6789', 'nate.hill@example.com', '1984-03-15', 'SSN321789654');

select * from cust_details;