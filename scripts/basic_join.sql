/*
======================================
        SELECT All Data
======================================
*/

-- Retrieve all data from 'customers' and 'orders' as separate results
SELECT * FROM customers;
SELECT * FROM orders;


/*
======================================
        INNER JOIN
======================================
*/

-- Get all customers along with their orders
-- Only returns customers who have placed an order
-- Syntax:
-- SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON condition;

SELECT 
    c.id, 
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
    ON c.id = o.customer_id;


/*
======================================
        LEFT JOIN
======================================
*/

-- Get all customers along with their orders
-- Includes customers without orders
-- Returns all rows from the LEFT table, and matching rows from the RIGHT table

SELECT 
    c.id, 
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id;


/*
======================================
        RIGHT JOIN
======================================
*/

-- Get all customers along with their orders
-- Includes orders that don’t have matching customers
-- Returns all rows from the RIGHT table, and matching rows from the LEFT table
-- ?? The order of tables matters here

SELECT 
    c.id, 
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.id = o.customer_id;


/*
======================================
        FULL JOIN
======================================
*/

-- Get all customers and all orders
-- Returns all rows from BOTH tables, even if there’s no match

SELECT 
    c.id, 
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
FULL JOIN orders AS o
    ON c.id = o.customer_id;