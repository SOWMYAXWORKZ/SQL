CREATE DATABASE bank_details;

CREATE TABLE bank_details (
    bank_id INT PRIMARY KEY,
    bank_name VARCHAR(100),
    bank_branch VARCHAR(100),
    bank_address VARCHAR(200),
    bank_city VARCHAR(50),
    bank_state VARCHAR(50),
    bank_zipcode VARCHAR(10),
    bank_phone VARCHAR(15),
    bank_email VARCHAR(100),
    bank_manager VARCHAR(100)
);

desc bank_details;

ALTER TABLE bank_details
ADD CONSTRAINT unique_bank_name UNIQUE (bank_name);

desc bank_details;

INSERT INTO bank_details (bank_id, bank_name, bank_branch, bank_address, bank_city, bank_state, bank_zipcode, bank_phone, bank_email, bank_manager)
VALUES
(1, 'Bank A', 'Branch 1', '123 Main St', 'CityX', 'StateY', '12345', '555-1234', 'contact@banka.com', 'Manager A'),
(2, 'Bank B', 'Branch 2', '456 Elm St', 'CityY', 'StateZ', '67890', '555-5678', 'contact@bankb.com', 'Manager B'),
(3, 'Bank C', 'Branch 3', '789 Oak St', 'CityZ', 'StateA', '54321', '555-4321', 'contact@bankc.com', 'Manager C'),
(4, 'Bank D', 'Branch 4', '321 Pine St', 'CityA', 'StateB', '98765', '555-8765', 'contact@bankd.com', 'Manager D'),
(5, 'Bank E', 'Branch 5', '654 Cedar St', 'CityB', 'StateC', '56789', '555-6789', 'contact@banke.com', 'Manager E'),
(6, 'Bank F', 'Branch 6', '987 Spruce St', 'CityC', 'StateD', '23456', '555-7890', 'contact@bankf.com', 'Manager F'),
(7, 'Bank G', 'Branch 7', '135 Maple St', 'CityD', 'StateE', '67812', '555-8901', 'contact@bankg.com', 'Manager G'),
(8, 'Bank H', 'Branch 8', '246 Birch St', 'CityE', 'StateF', '78923', '555-9012', 'contact@bankh.com', 'Manager H'),
(9, 'Bank I', 'Branch 9', '357 Ash St', 'CityF', 'StateG', '89034', '555-0123', 'contact@banki.com', 'Manager I'),
(10, 'Bank J', 'Branch 10', '468 Willow St', 'CityG', 'StateH', '90145', '555-1234', 'contact@bankj.com', 'Manager J'),
(11, 'Bank K', 'Branch 11', '579 Poplar St', 'CityH', 'StateI', '01256', '555-2345', 'contact@bankk.com', 'Manager K'),
(12, 'Bank L', 'Branch 12', '680 Palm St', 'CityI', 'StateJ', '12367', '555-3456', 'contact@bankl.com', 'Manager L'),
(13, 'Bank M', 'Branch 13', '791 Fir St', 'CityJ', 'StateK', '23478', '555-4567', 'contact@bankm.com', 'Manager M'),
(14, 'Bank N', 'Branch 14', '902 Cedar St', 'CityK', 'StateL', '34589', '555-5678', 'contact@bankn.com', 'Manager N'),
(15, 'Bank O', 'Branch 15', '013 Elm St', 'CityL', 'StateM', '45690', '555-6789', 'contact@banko.com', 'Manager O');

desc bank_details;

select * from bank_details;