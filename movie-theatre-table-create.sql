CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    movie_id INTEGER,
    total NUMERIC(4,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);


CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    release_date DATE
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    item VARCHAR(50),
    total NUMERIC (4,2),
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);