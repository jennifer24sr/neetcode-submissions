-- Step 1: Get the targeted target IDs first, then join customer details at the end
SELECT c.customer_id, c.customer_name
FROM customers c
JOIN (
    SELECT customer_id FROM orders WHERE product_name = 'A'
    INTERSECT
    SELECT customer_id FROM orders WHERE product_name = 'B'
    EXCEPT
    SELECT customer_id FROM orders WHERE product_name = 'C'
) target_list ON c.customer_id = target_list.customer_id
order by c.customer_name
;
