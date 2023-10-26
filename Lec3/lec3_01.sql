-- create
CREATE TABLE EMPLOYEE (
    empId INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    dept TEXT NOT NULL
);

-- insert
INSERT INTO
    EMPLOYEE
VALUES
    (0001, 'Clark', 'Sales');

INSERT INTO
    EMPLOYEE
VALUES
    (0002, 'Dave', 'Accounting');

INSERT INTO
    EMPLOYEE
VALUES
    (0003, 'Ava', 'Sales');

-- fetch -psql
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    name OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY;

-- fetch -mysql
SELECT
    *
FROM
    EMPLOYEE
ORDER BY
    name
LIMIT
    2 OFFSET 1;