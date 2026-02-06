-- Quick way to backup a table
select * into test_moives from Movies




--Update Producer Table to include new columns in Movies Database

Use Movies
Go

Alter Table Producer
	Add 
	FavoriteColor VarChar(25);
	City VarChar(40),
	Licensed Bit,
	StartDate Date;

-- Remove FavoriteColor column from Producer Table in Movies Database
Use Movies
Go

Alter Table Producer
	Drop Column FavoriteColor

-- Update City column to allow NULL values in Producer Table in Movies Database
Use Movies
Go

Alter Table Producer
	Alter Column City varchar(50) Null;

-- Update Licensed column to NOT NULL in Producer Table in Movies Database
Use Movies
Go

Alter Table Producer
Alter Column Licensed bit not null;