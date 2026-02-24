/*
=============
Create database and schemas
=======================
Script create new database and if already exists it is dropped and recreated.
*/


if exists(select 1 from sys.database where name='DatawareHouse')
begin 
	alter database DatawareHouse set SINGLE_USER with rollback immediate ;
	drop database DatawareHouse
end



create database DatawareHouse;

create schema bronze;

create schema silver;

create schema gold;
