# Write your MySQL query statement below
select v.customer_id,count(*) as count_no_trans
from visits v
left join transactions t
ON v.visit_id = t.visit_id
where t.visit_id is NULL
Group by v.customer_id;