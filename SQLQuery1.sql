Create Database EShoppingAspDb
Go
Use EShoppingAspDb
Go
Create Table Users
(
	id int identity(1,1) primary key,
	fullName varchar(50) not null,
	contactNumber varchar(50) not null,
	emailAddress varchar(50) not null,
	userName varchar(50) null,
	password varchar(50) null
)
Go
Insert into Users (fullName,contactNumber,emailAddress,userName,password) Values('Josna Akter Allo','01799955528','josnaallo94@gmail.com','Josna12345','allo@123')
Go
Select * From Users
Go
Select * From Users Where userName='josna12345' and password='josna@12345'
Go
/*tbale creation for product*/
Create Table Brand
(
	brandId int identity(1,1) primary key,
	brandName varchar(500)
)
Go
Select * From Brand
Go
Create Table Category
(
	Id int identity(1,1) primary key,
	categoryName varchar(500)
)
Go
Insert Into Brand(brandName) Values('Gucci'),('Dell'),('Bata')
go
Insert Into Category(categoryName) Values('Foot Wear'),('Clothing'),('Electric Device')
Go
Select * from Category
Go


Create Table Products
(
	productId int identity(1,1) primary key,
	productName varchar(500) not null,
	price money,
	sellDate date,
	pBrandId int References Brand(brandId),
	pCategoryId int References Category(Id),
	isAvilable bit,
	productImage varchar(200)
)
Go

Insert Into Products(productName,price,sellDate,pBrandId,pCategoryId,isAvilable,productImage)
Values('Full Shirt',800.00,'10-10-2010',1,2,'True','')
Go
Select * From Products
Go
Insert into Brand (brandName) values('Gucci')
Go
Update Brand Set brandName='Gucci' Where brandId=1
Go
Delete From Brand Where brandId=1
Go
Select * From Brand
Go
Insert Into Category(categoryName) Values('Foot Wear')
Go
Select * From Category
go

Insert into Gender(genderName) Values('Man')
Go
Select * From Gender
Go
Select brandId,brandName From Brand
go
Select categoryName From Category
Go


Select pBrandId from Products
Go

Select * From Products
Go
Create Procedure sp_InsertProduct
(
@pName varchar(500),
@pPrice money,
@pSellPrice money,
@pSellDate date,
@pBrand int,
@pCategory int,
@pSubCategory int,
@pGender int,
@pDescription varchar(max),
@freeOndelevery bit,
@30daysReturn int,
@cashOnDelivery int

)
as
Insert Into Products Values(@pName,@pPrice,@pSellPrice,@pSellDate,@pBrand,@pCategory,@pSubCategory,@pGender,@pDescription,
@freeOndelevery,@30daysReturn,@cashOnDelivery)
select SCOPE_IDENTITY()
return 0
Go

Select * From Products
Go



