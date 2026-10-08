SELECT emp_id,
       emp_name,
       salary,
       fn_annual_salary(salary) AS annual_salary,
       fn_years_service(hire_date) AS years_service,
       fn_tax(salary) AS tax,
       fn_dept_name(dept_id) AS department
FROM employees;
