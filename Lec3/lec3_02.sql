CREATE TABLE Product (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL NOT NULL
);

INSERT INTO
    Product (ProductName, Manufacturer, ProductCount, Price)
VALUES
    ('iPhone X', 'Apple', 3, 76000),
    ('iPhone 8', 'Apple', 2, 51000),
    ('iPhone 7', 'Apple', 5, '32000'),
    ('Galaxy S9', 'Samsung', 2, 56000),
    ('Galaxy S8', 'Samsung', 1, 41000),
    ('Honor 10', 'Huawei', 5, 28000),
    ('P20 Pro', 'Huawei', 5, 36000),
    ('Nokia 8', 'HMD Global', 6, 38000);

/* -- так не работает ?
 SELECT
 Manufacturer,
 COUNT(*) AS Models,
 Price,
 ProductCount
 FROM
 Product
 WHERE
 Price > 40000
 GROUP BY
 Manufacturer;
 */
SELECT
    Manufacturer,
    COUNT(*) AS Models,
    AVG(Price) AS AveragePrice,
    SUM(ProductCount) AS TotalProductCount
FROM
    Product
WHERE
    Price > 40000
GROUP BY
    Manufacturer;

SELECT
    *
FROM
    Product;

-- use product;
SELECT
    distinct Manufacturer
FROM
    Product;

/*
 SELECT 
 distinct Manufacturer,ProductCount
 FROM Product;
 */
/*
 SELECT Manufacturer,
 COUNT(*) AS ModelsCount
 FROM  product
 Group By Manufacturer;
 */
/*
 SELECT avg(price)
 as average_price
 from product;
 */
/*
 select avg(price)
 from product
 where manufacturer = 'Apple';
 */
/*
 select 
 count(*)
 from product;
 */
/*
 select
 min(price),max(price)
 from product;
 */
/*
 SELECT
 Manufacturer,
 COUNT(*) AS ModelCount
 FROM
 Product
 GROUP BY
 Manufacturer
 HAVING
 count(*) > 1;
 */
/*
 SELECT
 Manufacturer,
 COUNT(*) AS ModelCount
 FROM
 Product
 WHERE
 Price * ProductCount > 80000
 GROUP BY
 Manufacturer
 HAVING
 COUNT(*) > 1;
 */
SELECT
    Manufacturer,
    COUNT(*) AS ModelCount,
    SUM(ProductCount) AS Units
FROM
    Product
WHERE
    Price * ProductCount > 80000
GROUP BY
    Manufacturer
HAVING
    SUM(ProductCount) > 2
ORDER BY
    Units DESC;

SELECT
    Manufacturer,
    COUNT(*) AS Models,
    Price,
    ProductCount
FROM
    Product
WHERE
    Price > 40000
GROUP BY
    Manufacturer;

SELECT
    Manufacturer,
    COUNT(*) AS Models,
    AVG(Price) AS AveragePrice,
    SUM(ProductCount) AS TotalProductCount
FROM
    Product
WHERE
    Price > 40000
GROUP BY
    Manufacturer;