CREATE TABLE [dbo].[Order]
(
	[OrderDate] DATE NOT NULL, 
    [Quantity] INT NULL, 
    [ShipDate] DATE NULL,

	[ProdID] NVARCHAR(50) NOT NULL,
	[CustID] NVARCHAR(50) NOT NULL,
	[ShipMode] NVARCHAR(50)
	CONSTRAINT [FK_Order_Product] FOREIGN KEY ([ProdID]) REFERENCES [Product]([ProdID]),
	CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustID]) REFERENCES [Customer]([CustID]),
	CONSTRAINT [FK_Order_Shipping] FOREIGN KEY ([ShipMode]) REFERENCES [Shipping]([ShipMode]),

	CONSTRAINT PK_Order PRIMARY KEY ([OrderDate],[ProdID],[CustID])


)
