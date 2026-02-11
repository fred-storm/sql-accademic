Use Movies_DB
Go

-- Select directors with the last name of "Coppola"
SELECT DirectorID, FirstName, LastName
FROM Director
WHERE LastName = 'Coppola';

-- Find movie producers whose last name begins with "M"
SELECT LastName
FROM Producer
WHERE LastName LIKE 'M%';

-- List movie titles and ratining for moives with a rating >= 8, arragned alphabetically by title
SELECT Title, Rating
FROM Movies
WHERE Rating >= 8
ORDER BY Title;

-- List movies titles and ratings for movies rated between 5 and 6, arranged alphabetically by title
SELECT Title, Rating
FROM Movies
WHERE Rating BETWEEN 5 AND 6
ORDER BY Title;

-- List producer records with no first name.
SELECT ProducerID, FirstName, LastName
FROM Producer
WHERE FirstName IS NULL;