Create table #ProductDetail
(
	ID INT ,
	ProductCode VARCHAR(50),
	ProductName VARCHAR(50),
	OrderDate DATETIME
)

GO

Insert into #ProductDetail

Select 1 ,' A'  , 'Bat'  ,'2016-01-05' UNION ALL 
Select 2 ,' A'  , 'Bat'  ,'2016-02-01' UNION ALL 
Select 3 ,' A'  , 'Bat'  ,'2016-03-05' UNION ALL 
Select 4 ,' A'  , 'Bat'  ,'2016-03-10' UNION ALL 
Select 5 ,' A'  , 'Bat'  ,'2017-01-05' UNION ALL 
Select 6 ,' A'  , 'Bat'  ,'2017-02-05' UNION ALL 
Select 7 ,' A'  , 'Bat'  ,'2017-03-10' UNION ALL 
Select 8 ,' A'  , 'Bat'  ,'2017-11-25' UNION ALL 
Select 9 ,' A'  , 'Bat'  ,'2017-12-30' UNION ALL 
Select 10 ,' A'  , 'Bat'  ,'2018-06-10' UNION ALL 
Select 11 ,' A'  , 'Bat'  ,'2018-07-20' UNION ALL 
Select 12 ,' A'  , 'Bat'  ,'2018-08-15' UNION ALL 
Select 13 ,' A'  , 'Bat'  ,'2018-09-20' UNION ALL 
Select 14 ,' A'  , 'Bat'  ,'2018-10-21' UNION ALL 
Select 15 ,' B'  , 'Helmet'  ,'2016-01-05' UNION ALL 
Select 16 ,' B'  , 'Helmet'  ,'2016-02-01' UNION ALL 
Select 17 ,' B'  , 'Helmet'  ,'2016-03-05' UNION ALL 
Select 18 ,' B'  , 'Helmet'  ,'2016-03-10' UNION ALL 
Select 19 ,' B'  , 'Helmet'  ,'2017-01-05' UNION ALL 
Select 20 ,' B'  , 'Helmet'  ,'2017-02-05' UNION ALL 
Select 21 ,' B'  , 'Helmet'  ,'2017-03-10' UNION ALL 
Select 22 ,' B'  , 'Helmet'  ,'2017-11-25' UNION ALL 
Select 23 ,' B'  , 'Helmet'  ,'2017-12-30' UNION ALL 
Select 24 ,' B'  , 'Helmet'  ,'2019-06-10' UNION ALL 
Select 25 ,' B'  , 'Helmet'  ,'2019-07-20' UNION ALL 
Select 26 ,' B'  , 'Helmet'  ,'2019-08-15' UNION ALL 
Select 27 ,' B'  , 'Helmet'  ,'2019-09-20' UNION ALL 
Select 28 ,' B'  , 'Helmet'  ,'2019-10-21' UNION ALL 
Select 29 ,' B'  , 'Helmet'  ,'2019-12-25' UNION ALL 
Select 30 ,' B'  , 'Helmet'  ,'2019-12-25' UNION ALL 
Select 31 ,' A'  , 'Bat'  ,'2016-03-05' UNION ALL 
Select 32 ,' A'  , 'Bat'  ,'2016-01-05' 


GO

Select * From #ProductDetail

Select ProductName, [2016-01-05],[2016-02-01]
From 
(
	Select ProductName, ProductCode, orderdate from #ProductDetail
) as SourceTable
Pivot 
(
	count(ProductCode) for orderdate in (	[2016-01-05],[2016-02-01] )
) as pivotTable



Drop table #ProductDetail

