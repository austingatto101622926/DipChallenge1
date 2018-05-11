CREATE TABLE [dbo].[Customer]
(
	[CustID] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [FullName] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [PostCode] NVARCHAR(5) NULL,

	[SegID] INT,
	CONSTRAINT [FK_Customer_Segment] FOREIGN KEY ([SegID]) REFERENCES [Segment]([SegID]),
	[Region] NVARCHAR(50) NOT NULL,
	CONSTRAINT [FK_Customer_Region] FOREIGN KEY ([Region]) REFERENCES [Region]([Region])
)
