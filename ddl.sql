CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50), 
    email VARCHAR (100) NOT NULL UNIQUE,
    prime BOOLEAN DEFAULT false,
    date_joined DATE DEFAULT CURRENT_DATE,
    age INTEGER
);

CREATE TABLE my_transaction(
    transaction_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    time_purchased TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC (10,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    product_description VARCHAR,
    price NUMERIC(8,2)
);

ALTER TABLE products
RENAME COLUMN item_id TO product_id;

CREATE TABLE receipt_item(
    receipt_item_id SERIAL PRIMARY KEY,
    transaction_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    subtotal NUMERIC (8,2),
    FOREIGN KEY (transaction_id) REFERENCES my_transaction(transaction_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);
