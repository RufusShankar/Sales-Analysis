--Cleaning dimDate Table 

SELECT [DateKey]
      ,[FullDateAlternateKey] as date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as weekNum
      ,Left([EnglishMonthName],3) as month
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] as monthNum
      ,[CalendarQuarter] 
      ,[CalendarYear] as year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >=2019
  ORDER BY date
