--Cleaning dimProducts table

SELECT [ProductKey]
      ,[ProductAlternateKey] as ProductCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName 
	  ,pc.[EnglishProductCategoryName] as ProductCategory
	  ,ps.[EnglishProductSubcategoryName] as ProductSubCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] 
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[StartDate]
      --,[EndDate]
	  --,[Status]
	  ,ISNULL(p.Status,'Outdated') as ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] p
  LEFT JOIN DimProductSubcategory ps 
  ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory pc
  ON pc.ProductCategoryKey=ps.ProductCategoryKey 
  Order by 1