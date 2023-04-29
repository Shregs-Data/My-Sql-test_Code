
--1 country whose sale profit was the highest
 select a.Country as Country, sum(d.CostPerCookie*c.Quantity) as Highest_Sale	
from KCC.dbo.Customers as a 
inner join kcc.dbo.Orders as b on a.CustomerID = b.CustomerID
inner join kcc.dbo.Order_Product as c on c.OrderID = b.OrderID
inner join kcc.dbo.Product as d on d.CookieID =c.CookieID
group by a.Country
order by Highest_Sale desc    --completed   

--2 country with the highest sale using joins
SELECT Country, SUM(OrderTotal) AS total
FROM KCC.dbo.Orders AS a
JOIN KCC.dbo.Customers AS b ON a.CustomerID = b.CustomerID
GROUP BY Country 


--3 Country with the highest quantity sold
select TOP 1 a.Country, MAX(c.Quantity) as highest_quantity_for_country
from kcc.dbo.Customers AS a
inner join kcc.dbo.Orders as b on a.CustomerID = b.CustomerID
inner join kcc.dbo.Order_Product as c on c.OrderID = b.OrderID
group by a.Country
order by highest_quantity_for_country DESC 
--completed   

--4 Total product bought the highest
select TOP 1 a.CustomerName as name_of_customer , d.CookieName as Name_of_cookie , c.Quantity as Quantity
from kcc.dbo.Customers AS a
inner join kcc.dbo.Orders as b on a.CustomerID = b.CustomerID
inner join kcc.dbo.Order_Product as c on c.OrderID = b.OrderID
inner join kcc.dbo.Product as d on d.CookieID =c.CookieID
order by Quantity Desc  -- COmpleted


--5 Name of the highest order made the most
select TOP 1 d.CookieName as Name_order, max(c.Quantity) as Total_quantity
from KCC.dbo.Customers as a
inner join kcc.dbo.Orders as b on a.CustomerID = b.CustomerID
inner join kcc.dbo.Order_Product as c on c.OrderID = b.OrderID
inner join kcc.dbo.Product as d on d.CookieID =c.CookieID
group by d.CookieName
order by Total_quantity DESC    --Completed   

--6 Average No of Quantity sold per Product name
select a.CookieName , avg(b.Quantity) as Average_Quantity
from KCC.dbo.Product as a
inner join kcc.dbo.Order_Product as b on a.CookieID = b.CookieID
Group by a.CookieName
	




