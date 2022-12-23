---Welcome to Address book system ---

--- uc1 create AddressBookService database ---
create database AddressBookService
use AddressBookService

--- uc2 ability to create table ---
Create table AddressBookTable(
FirstName VARCHAR(25) NOT NULL,
LastName VARCHAR(25) NOT NULL,
Address VARCHAR(200) NOT NULL,
City VARCHAR(25) NOT NULL,
State VARCHAR(25) NOT NULL,
Zip Int NOT NULL,
PhoneNo Int NOT NULL,
Email VARCHAR(30) NOT NULL
)
select * from AddressBookTable

--- uc3 Insert new contact to table ---
Insert into AddressBookTable values('Anil','Bamne','Bhalki','Bidar','Karnataka',585416,81528176,'anilbamne20@gmail.com')
Insert into AddressBookTable values('Sunil','Kumar','Patna','Patna','Bihar',223416,4637393,'sunil@gmail.com'),('Akshata','Kumari','Hubli','Dharwad','Karnataka',62343,3456432,'akshatak@gmail.com'),('Vinay','Kumar','Daadar','Mumbai','Maharashtra',76367,9856356,'vinaykumar@gmail.com')
select * from AddressBookTable

--- uc4 editing contact using persons name ---
Update AddressBookTable Set Zip=111111 Where FirstName='Vinay'
Update AddressBookTable Set PhoneNo=999999 Where FirstName='Sunil'

--- uc5 deleting contact using persons name ---
Delete from AddressBookTable Where FirstName='Sunil'

--- Retrive person using city or state ---
Select * From AddressBookTable Where City='Bidar'
Select * From AddressBookTable Where State='Karnataka'