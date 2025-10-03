/*  
    =======================================================
    Join Exploration: Understanding Different Join Types
    =======================================================

    Script Purpose:
        These queries demonstrate different SQL join patterns.
        Use them as a reference when you need to compare 
        customers and orders datasets.

    -------------------------------------------------------
    Exploration Steps:
    -------------------------------------------------------
    1. LEFT ANTI JOIN
        - Find customers who have NOT placed any orders
        - Pattern: LEFT JOIN + WHERE right_side.id IS NULL

    2. RIGHT ANTI JOIN
        - Find orders that do NOT have matching customers
        - Pattern: RIGHT JOIN + WHERE left_side.id IS NULL

    3. FULL ANTI JOIN
        - Find all mismatches:
            * Customers without orders
            * Orders without customers
        - Pattern: FULL JOIN + WHERE conditions for both sides

    4. Advanced INNER JOIN (without explicit INNER JOIN)
        - Get customers who have placed at least one order
        - Pattern: LEFT JOIN + WHERE right_side.id IS NOT NULL

    5. CROSS JOIN
        - Generate Cartesian product (all combinations)
        - Useful for testing or scenario simulation
*/

/* =======================================================
   LEFT ANTI JOIN – Customers without Orders
   ======================================================= */
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id 
WHERE o.customer_id IS NULL;


/* =======================================================
   RIGHT ANTI JOIN – Orders without Customers
   ======================================================= */
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.id = o.customer_id 
WHERE c.id IS NULL;


/* =======================================================
   FULL ANTI JOIN – All Unmatched Records
   ======================================================= */
SELECT *
FROM orders AS o
FULL JOIN customers AS c
    ON c.id = o.customer_id 
WHERE c.id IS NULL 
   OR o.customer_id IS NULL;


/* =======================================================
   Advanced INNER JOIN (without INNER JOIN keyword)
   ======================================================= */
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id 
WHERE o.customer_id IS NOT NULL;


/* =======================================================
CROSS JOIN – All Combinations of Customers & Orders
   ======================================================= */
SELECT *
FROM customers 
CROSS JOIN orders;
