/* Write your PL/SQL query statement below */

select unique_id ,name
from Employees e
left outer join EmployeeUNI eu on e.id=eu.id;