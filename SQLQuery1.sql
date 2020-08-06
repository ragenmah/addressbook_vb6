INSERT INTO [Addressbook].[dbo].[AddressBookInfo]
           ([Name]
           ,[Address]
           ,[Mobile]
           ,[Image])
     VALUES
           (<Name, varchar(50),>
           ,<Address, varchar(25),>
           ,<Mobile, varchar(50),>
           ,<Image, varchar(100),>)
GO

select * from AddressbookInfo
CREATE TABLE [dbo].[AddressBookInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](25) NULL,
	[Mobile] [varchar](50) NULL,
	[Image] [varchar](100) NULL
) ON [PRIMARY]
create database Addressbook
select id from AddressbookInfo 
