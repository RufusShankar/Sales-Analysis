--Cleaning dimCustomer table and joining with dimGeography table
SELECT [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
      ,CONCAT(FirstName,' ',LastName) as FullName
	  --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , Case								--CASE clause
	    WHEN [Gender] = 'M' THEN 'Male'
		WHEN [Gender] = 'F' THEN 'Female'
		END as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
	  ,g.City
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  LEFT JOIN [AdventureWorksDW2019].[dbo].DimGeography g  --Joining tables
  ON c.GeographyKey=g.GeographyKey
  ORDER BY c.CustomerKey asc							-- ORDER By Clause

  