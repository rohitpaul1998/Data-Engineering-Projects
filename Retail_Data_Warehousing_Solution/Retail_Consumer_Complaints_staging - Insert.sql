USE [retail_data_warehousing_solution]
GO

INSERT INTO [dbo].[retail_warehousing_stg]
           ([Date received]
           ,[Product]
           ,[Sub-product]
           ,[Issue]
           ,[Sub-issue]
           ,[Consumer complaint narrative]
           ,[Company public response]
           ,[Company]
           ,[State]
           ,[ZIP code]
           ,[Tags]
           ,[Consumer consent provided]
           ,[Submitted via]
           ,[Date sent to company]
           ,[Company response to consumer]
           ,[Timely response]
           ,[Consumer disputed]
           ,[Complaint ID])
     VALUES
           (<Date received, varchar(255),>
           ,<Product, varchar(255),>
           ,<Sub-product, nvarchar(255),>
           ,<Issue, varchar(255),>
           ,<Sub-issue, varchar(255),>
           ,<Consumer complaint narrative, nvarchar(max),>
           ,<Company public response, varchar(255),>
           ,<Company, nvarchar(255),>
           ,<State, varchar(255),>
           ,<ZIP code, varchar(255),>
           ,<Tags, varchar(255),>
           ,<Consumer consent provided, varchar(255),>
           ,<Submitted via, varchar(255),>
           ,<Date sent to company, varchar(255),>
           ,<Company response to consumer, varchar(255),>
           ,<Timely response, varchar(255),>
           ,<Consumer disputed, varchar(255),>
           ,<Complaint ID, float,>)
GO

