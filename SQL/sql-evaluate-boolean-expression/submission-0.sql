-- Write your query below
select e.left_operand,e.operator,e.right_operand,
case e.operator
WHEN '>'  THEN v1.value >  v2.value
WHEN '<'  THEN v1.value <  v2.value
WHEN '='  THEN v1.value =  v2.value 
else null
end as value
 from expressions e 
 left join variables v1 ON e.left_operand = v1.name
 LEFT JOIN variables v2 ON e.right_operand = v2.name;