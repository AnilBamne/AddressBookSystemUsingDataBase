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

--- uc6 Retrive person using city or state ---
Select * From AddressBookTable Where City='Bidar'
Select * From AddressBookTable Where State='Karnataka'

--- uc7 Get size of addressbook by city or state ---
select count(*) as size from AddressBookTable where State='Karnataka'
Insert into AddressBookTable values('Ramdas','Bamne','Bhalki','Bidar','Karnataka',23234,746537,'ramdas@gmail.com')
Insert into AddressBookTable values('Sunil','Kumar','Patna','Patna','Bihar',223416,4637393,'sunil@gmail.com'),('Aneesh','Katta','Hyd','Hyderabad','Telangana',44455,774238,'aneesh@yahoo.com'),('kalpana','sharma','Wagholi','Pune','Maharashtra',343455,45647755,'kalpana@hotmail.com')

--- uc8 sorting entries alphabetically by persons name ---
select *from AddressBookTable order by FirstName

--- uc9 Ability to Identify each address book by name and type ---
--- Adding columns 1.AddressBookType 2.AddressBookName
Alter Table AddressBookTable Add AddressBookType varchar(100),AddressBookName varchar(100)
select *from AddressBookTable
Update AddressBookTable Set AddressBookType='Family' Where FirstName='Anil'
Update AddressBookTable Set AddressBookType='Family' Where FirstName='Ramdas'
Update AddressBookTable Set AddressBookType='Friend' Where FirstName='Akshata'
Update AddressBookTable Set AddressBookType='Friend' Where FirstName='Vinay'
Update AddressBookTable Set AddressBookType='Friend' Where FirstName='Sunil'
Update AddressBookTable Set AddressBookType='colleagues' Where FirstName='Aneesh'
Update AddressBookTable Set AddressBookType='colleagues' Where FirstName='kalpana'
--- Adding AddressBook Name ---
Update AddressBookTable Set AddressBookName='FamilyZone' where AddressBookType='Family'
Update AddressBookTable Set AddressBookName='FriendZone' where AddressBookType='Friend'
Update AddressBookTable Set AddressBookName='Profession' where AddressBookType='colleagues'

--- Ability to get count of contact by type ---
select count(*) as size from AddressBookTable where AddressBookType='Family'
select count(*) as size from AddressBookTable where AddressBookType='Friend'
select count(*) as size from AddressBookTable where AddressBookType='colleagues'





