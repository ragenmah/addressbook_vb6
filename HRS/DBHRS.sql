create database DBHomeRentalSystem


CREATE TABLE [dbo].[RoomMaster](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](50) NULL,
	[RentPrice] [varchar](50) NULL,
	[FlatId] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	--[Address] [varchar](50) NULL,
	--[ContactNo] [varchar](50) NULL
)

CREATE TABLE [dbo].[HouseMaster](
	[HouseID] [int] IDENTITY(1,1) NOT NULL,
	[HouseName] [nvarchar](50) NULL,
	[OwnerName] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL
)


CREATE TABLE [dbo].[FlatMaster](
	[FlatID] [int] IDENTITY(1,1) NOT NULL,
	[FlatName] [nvarchar](50) NULL,
	[NoOfRoom] [varchar](50) NULL,
	[House] [varchar](50) NULL,
	[Rent Price] [varchar](100) NULL,
	[Description] [varchar](50) NULL,
	--[ContactNo] [varchar](50) NULL
) 
CREATE TABLE [dbo].[CustomerMaster](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[MobileNo] [varchar](100) NULL,
	[GuardianName] [varchar](50) NULL,
	[GuardianContactNo] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[CustImage] [varchar](50) NULL
)
