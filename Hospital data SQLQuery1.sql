use Projects
go

--1. How many patients were admitted each year ?
select admit_year, count(patient_id) as Total_Admissions from Hospital_Records_Clean
group by Admit_Year
order by Admit_Year

--2. Which year generated the highest revenue ?
select admit_year, sum(bill_amount) as Total_Revenue FROM Hospital_Records_Clean
group by admit_year
order by Total_Revenue DESC

--3. What is the avaerage hospitalization cost per patient ?
select round(avg(bill_amount),2) as Avg_Cost from Hospital_Records_Clean

--4. Which medical condition are most common ?
select medical_condition, count(*) as patient_count from Hospital_Records_Clean
group by Medical_Condition
order by patient_count desc

--5. Which medical conditions generate the most revenue ?
select medical_condition, round(sum(bill_amount),2) as total_revenue from Hospital_Records_Clean
group by Medical_Condition
order by total_revenue desc

--6.Which medical condition have the longest avearage length of stay ?

--7. Which age group uses hospital services the most ?
select age_group, count(*) as admissions from Hospital_Records_Clean
group by Age_Group
order by admissions desc

--8. Which age group generates the higest revenue ?
select age_group, round(sum(bill_amount),2) as revenue from Hospital_Records_Clean
group by age_group 
order by revenue desc

--9. Which gender incurs higher hospitalization costs ?
select gender, round(sum(bill_amount),2) as total_cost from Hospital_Records_Clean
group by gender

--10. Which month has the highest admissions ?
select admit_month_name, count (*) as admissions from Hospital_Records_Clean
group by Admit_Month_Name
order by admissions desc

--11. which month generates the hihest revenue ?
select admit_month_name, sum(bill_amount) as revenue from Hospital_Records_Clean
group by Admit_Month_Name
order by revenue desc

--12. Which treatments are used most frequently ?
select treatments, count (*) as frequency from Hospital_Records_Clean
group by treatments
order by frequency desc

--13. Which treatments generates the highest revenue ?
select treatments, round(sum(bill_amount),2) as revenue from Hospital_Records_Clean
group by treatments 
order by revenue desc

--14. Which treatments are assosiated with the longest stays ?
select treatments, avg(length_of_stay) as Avg_LoS FROM Hospital_Records_Clean
group by treatments 
order by Avg_LoS desc













--select * from Hospital_Records_Clean