CREATE TABLE Product (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL
);

INSERT INTO
    Product (ProductName, Manufacturer, ProductCount, Price)
VALUES
    ('iPhone X', 'Apple', 3, 76000),
    ('iPhone 8', 'Apple', 2, 51000),
    ('Galaxy S9', 'Samsung', 2, 56000),
    ('Galaxy S8', 'Samsung', 1, 41000),
    ('P20 Pro', 'Huawei', 5, 36000);

UPDATE
    Product
SET
    Price = Price + 3000
Where
    id > 0;

DELETE FROM
    Product
WHERE
    Manufacturer = 'Huawei'
    and id > 0;

SELECT
    *
FROM
    Product;