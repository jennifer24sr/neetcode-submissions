-- Write your query below
select s.name from sales_person s where not exists 
(select * from orders o inner join company c on o.com_id = c.com_id
WHERE c.name = 'CRIMSON' 
      AND o.sales_id = s.sales_id);