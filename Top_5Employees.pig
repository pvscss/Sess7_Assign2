emp = LOAD 'employee_details.txt' USING PigStorage(',') AS (emp_id:int, emp_name:chararray, emp_salary:int,emp_rating:int);
/* Loading Source data*/
sorted = order emp by emp_rating desc,emp_name asc;
/* Sorting the loaded data based on Rating and Name to get the Top list based on Rating */
top = limit sorted 5;
/* Getting the Top 5 Employees based on Rating*/
dump top;

