-- Create PRODUCT table
CREATE TABLE PRODUCT (
  Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
  Product_name VARCHAR2(20) NOT NULL,
  Price NUMBER
);

-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
  Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
  Customer_name VARCHAR2(20) NOT NULL,
  Customer_name NUMBER
);

-- Create ORDERS table
CREATE TABLE ORDERS (
  Quantity NUMBER,
  Total_amount NUMBER,
  CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES CUSTOMER (Customer_id),
  CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES PRODUCT (Product_id)
);

-- Add a column Category (VARCHAR2(20)) to the PRODUCT table. 
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.
ALTER TABLE ORDERS ADD OrderDate DATE;
ALTER TABLE ORDERS ALTER OrderDate SET DEFAULT 'SYSDATE';