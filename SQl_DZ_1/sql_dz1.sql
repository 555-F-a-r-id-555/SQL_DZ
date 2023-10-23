CREATE TABLE IF NOT EXISTS itresume8663785.mobile_phones(
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(45),
    manufacture VARCHAR(45),
    product_count INT,
    price DECIMAL(10, 2)
);

TRUNCATE TABLE itresume8663785.mobile_phones;

INSERT INTO
    itresume8663785.mobile_phones(
        product_name,
        manufacture,
        product_count,
        price
    )
VALUES
    ('iPhone X', 'Apple', 3, 76000),
    ('iPhone 8', 'Apple', 2, 51000),
    ('Galaxy S9', 'Samsung', 2, 56000),
    ('Galaxy S8', 'Samsung', 1, 41000),
    ('P20 Pro', 'Huawei', 5, 36000);

SELECT
    *
FROM
    itresume8663785.mobile_phones;

-- task2
SELECT
    product_name,
    manufacturer,
    price
FROM
    mobile_phones
WHERE
    product_count > 2;

-- task3
SELECT
    id,
    product_name,
    manufacturer,
    product_count,
    price
FROM
    mobile_phones
WHERE
    manufacturer = 'Samsung';

-- task4
SELECT
    id,
    product_name,
    manufacturer,
    product_count,
    price
FROM
    mobile_phones
WHERE
    LOWER(product_name) LIKE '%iphone%';

--task5
SELECT
    id,
    product_name,
    manufacturer,
    product_count,
    price
FROM
    mobile_phones
WHERE
    LOWER(manufacturer) LIKE '%samsung%';

--task6
SELECT
    id,
    product_name,
    manufacturer,
    product_count,
    price
FROM
    mobile_phones
WHERE
    product_name REGEXP '[0-9]';

--task7
SELECT
    id,
    product_name,
    manufacturer,
    product_count,
    price
FROM
    mobile_phones
WHERE
    product_name REGEXP '8';

--либо вот так:
SELECT
    id,
    product_name,
    manufacturer,
    product_count,
    price
FROM
    mobile_phones
WHERE
    product_name LIKE '%8%';