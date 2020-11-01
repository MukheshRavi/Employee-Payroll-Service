/*Sum of salary of male and female employees*/
select Gender,sum(salary) as SalarySum from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Average salary of male and female employees*/
select Gender,avg(salary) as AvgSalary from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Minimum salary*/
select Gender,min(salary) as MinSalary from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Maximum salary*/
select Gender,max(salary) as MaxSalary from employee_payroll where Gender='M' or Gender='F' group by Gender;
/*Employee count*/
select Gender,count(salary) as EmpCount from employee_payroll where Gender='M' or Gender='F' group by Gender;