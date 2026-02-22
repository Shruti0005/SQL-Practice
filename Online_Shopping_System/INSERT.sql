-- Insert data in the CUSTOMERS table.
INSERT INTO CUSTOMERS(CUSTOMER_ID, NAME, CITY, EMAIL) 
  VALUES(1, 'AMIT', 'PUNE', 'AMIT@GMAIL.COM'),
        (2, 'NEHA', 'MUMBAI', 'NEHA@GMAIL.COM'), 
        (3, 'RAJ', 'NAGPUR', 'RAJ@GAMIL.COM'), 
        (4, 'SNEHA', 'PUNE', 'SNEHA@GMAIL.COM'), 
        (5, 'KARAN', 'DELHI', 'KARAN@GMAIL.COM'),
        (6, 'NARAYANI', 'NAGPUR', 'NARAYANI@GMAIL.COM'), 
        (7, 'SHREE', 'HYDERABAD', 'SHREE@GMAIL.COM'), 
        (8, 'RUHAN', 'BANGLORE', 'RUHAN@GMAIL.COM'), 
        (9, 'MAHI', 'CHANNAI', 'MAHI@GMAIL.COM'), 
        (10, 'AVA', 'DELHI', 'AVA@GMAIL.COM');   

-- Insert data in the ORDERS table.
INSERT INTO ORDERS(ORDER_ID, CUSTOMER_ID, ORDER_DATE) 
  VALUES(1001, 1, '2024-01-10'), 
        (1002, 2, '2024-01-12'), 
        (1003, 1, '2024-01-15'), 
        (1004, 3, '2024-01-18'), 
        (1005, 4, '2024-01-20'),
        (1006, 10, '2024-04-01'), 
        (1007, 7, '2024-04-30'), 
        (1008, 5, '2024-05-02');

-- Insert data in the PRODUCT table.
INSERT INTO PRODUCT(PRODUCT_ID, PRODUCT_NAME, PRICE) 
  VALUES(101, 'LAPTOP', 60000), 
        (102, 'MOBILE', 20000), 
        (103, 'HEADPHONES', 2000), 
        (104, 'KEYBOARD', 1500), 
        (105, 'MOUSE', 800),
        (106, 'PEN_BOX', 150), 
        (107, 'GOLDEN_RING', 50000), 
        (108, 'PRINTER', 80000), 
        (109, 'SMART_WATCH', 5000), 
        (110, 'EARBUD', 8000);

-- Insert data in the ORDERS_ITEMS table.
INSERT INTO ORDERS_ITEMS(ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY) 
  VALUES(1, 1001, 101, 1),
        (2, 1001, 103, 2), 
        (3, 1002, 102, 1), 
        (4, 1003, 104, 1), 
        (5, 1003, 105, 2), 
        (6, 1004, 101, 1), 
        (7, 1005, 102, 1);
