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