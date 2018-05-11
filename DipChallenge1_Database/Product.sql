CREATE TABLE [dbo].[Product]
(
	[ProdID] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Description] NVARCHAR(150) NULL, 
    [UnitPrice] MONEY NULL, 

    [CatID] INT NOT NULL,
	CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CatID]) REFERENCES [Category]([CatID])

)
