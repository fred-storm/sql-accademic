-- Create the database
CREATE DATABASE Movies_2;
Go

USE Movies_2;
Go

-- Create Director table
CREATE TABLE Director (
    DirectorID INT NOT NULL,
    Director_FirstName VARCHAR(15),
    Director_LastName VARCHAR(25) NOT NULL,
    PRIMARY KEY (DirectorID)
);

-- Create Star table
CREATE TABLE Star (
    StarID INT NOT NULL,
    Star_FirstName VARCHAR(15),
    Star_LastName VARCHAR(25) NOT NULL,
    PRIMARY KEY (StarID)
);

-- Create Genre table
CREATE TABLE Genre (
    GenreID INT NOT NULL,
    Genre VARCHAR(15) NOT NULL,
    Genre_Description VARCHAR(200) NOT NULL,
    PRIMARY KEY (GenreID)
);

-- Create Movies table
CREATE TABLE Movies (
    MovieID INT NOT NULL,
    Title VARCHAR(35) NOT NULL,
    DirectorID INT NOT NULL,
    StarID INT NOT NULL,
    GenreID INT NOT NULL,
    Rating NUMERIC(3,1),
    PRIMARY KEY (MovieID),
    FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID),
    FOREIGN KEY (StarID) REFERENCES Star(StarID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);