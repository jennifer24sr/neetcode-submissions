-- Write your query below
select e.employee_id,
    CASE 
        WHEN e.employee_id % 2 = 0 or e.name like 'M%' THEN 0
        ELSE e.salary
    END AS bonus
 from employees e order by e.employee_id;