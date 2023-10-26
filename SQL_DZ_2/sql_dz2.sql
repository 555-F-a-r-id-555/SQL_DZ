-- task1
CREATE TABLE IF NOT EXISTS itresume8663785.sales (
    id SERIAL PRIMARY KEY,
    order_date DATE,
    count_product INT
);

INSERT INTO
    itresume8663785.sales (order_date, count_product)
VALUES
    ('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);

SELECT
    *
FROM
    itresume8663785.sales;

-- task2
SELECT
    id AS 'Номер заказа',
    count_product AS 'Количество продукта',
    CASE
        WHEN count_product < 100 THEN 'Маленький заказ'
        WHEN count_product >= 100
        AND count_product <= 300 THEN 'Средний заказ'
        WHEN count_product > 300 THEN 'Большой заказ'
        ELSE 'Неизвестно'
    END AS full_order_statusEND
FROM
    itresume8663785.sales;

-- task3
CREATE TABLE IF NOT EXISTS itresume8663785.orders (
    order_id VARCHAR(10) PRIMARY KEY,
    total_price DECIMAL(10, 2),
    order_status VARCHAR(10)
);

INSERT INTO
    itresume8663785.orders (order_id, total_price, order_status)
VALUES
    ('e03', 15.00, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');

SELECT
    *,
    CASE
        WHEN order_status = 'OPEN' THEN 'Order is in open state'
        WHEN order_status = 'CLOSED' THEN 'Order is closed'
        WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
        ELSE 'Unknown'
    END AS full_order_status
FROM
    itresume8663785.orders;

-- task4
SELECT
    id,
    employee_id,
    amount,
    order_status,
    CASE
        WHEN order_status = 'OPEN' THEN 'Order is in open state'
        WHEN order_status = 'CLOSED' THEN 'Order is closed'
        WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
        ELSE 'Not mentioned'
    END AS full_order_status
FROM
    itresume8663785.orders;