SELECT COUNT(CustomerId) AS Total_Customers
FROM european_bank;

select distinct age
from european_bank;

select sum(Exited) as total_churn
from european_bank;

select sum(IsActiveMember) as active_member
from european_bank;

select avg(Balance) as balance_no
from european_bank;

select avg(EstimatedSalary) as avg_salary
from european_bank;

select geography  , count(*) as Customer_no
from european_bank
group by geography;

select geography  , sum(Exited) as Customer_no
from european_bank
group by geography;

select NumOfProducts , avg(Balance) as avg_balance
from european_bank
group by NumOfProducts;

select IsActiveMember , count(*) as total_customer
from european_bank
group by IsActiveMember;


select Geography , round(sum(Exited) * 100 / count(*),2) as  CHURN_RATE
from european_bank
group by Geography
order by CHURN_RATE;


select customerId, Balance ,surname
from european_bank
order by Balance desc
limit 5;

SELECT Geography,
       ROUND(AVG(Balance), 2) AS Avg_Balance
FROM european_bank
GROUP BY Geography;