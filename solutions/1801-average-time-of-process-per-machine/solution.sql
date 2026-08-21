# Write your MySQL query statement below
select machine_id,
round(avg(time_taken),3) as processing_time
from ( select machine_id,
process_id,
sum(
case 
when activity_type='start'then -timestamp
when activity_type='end' then timestamp
end
)as time_taken
from Activity
group by machine_id, process_id
) t
group by machine_id
