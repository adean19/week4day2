INSERT INTO customer(
    customer_id,
    first_name,
    last_name
)VALUES(
    1,
    'Niko',
    'Bellic'
),(
    2,
    'Tommy',
    'Versetti'
),(
    3,
    'Trevor',
    'Philips'
)

SELECT *
FROM customer

INSERT INTO movies(
    movie_id,
    title,
    release_date
)VALUES(
    1,
    'Grand Theft Auto 5',
    '1/1/2016'
),(
    2,
    'Final Fantasy 16',
    '1/1/2023'
),(
    3,
    'Last and Furious',
    '1/1/2020'
)

select *
from movies

INSERT INTO tickets(
    ticket_id,
    customer_id,
    movie_id,
    total
)VALUES(
    1,
    1,
    2,
    10.99
),(
    2,
    2,
    3,
    8.99
),(
    3,
    3,
    1,
    10.99
)

select *
from tickets

INSERT INTO concessions(
    concessions_id,
    ticket_id,
    item,
    total
)VALUES(
    1,
    1,
    'CHIPS',
    2.99
),(
    2,
    1,
    'POPCORN',
    5.99
),(
    3,
    2,
    'SODA',
    3.99
),(
    4,
    2,
    'CANDY',
    4.99
),(
    5,
    3,
    'POPCORN',
    5.99
)

SELECT *
FROM concessions