 
        
INSERT INTO Customer
VALUES (1252,'Ram Kumar','Dilbagh Nagar','M','Jalandhar',NULL);

CREATE TABLE Order_details (
Order_id integer PRIMARY KEY,
delivery_date DATE,
cust_id INT,
FOREIGN KEY(cust_id) references Customer(id)
);

INSERT INTO Order_details
VALUES (1,'2019-03-11', 245);

select * from customer;
select * from order_details;