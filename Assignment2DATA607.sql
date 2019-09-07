CREATE DATABASE movie_ratings;

CREATE TABLE movies (
movieid INTEGER NOT NULL AUTO_INCREMENT,
title VARCHAR (20) NOT NULL,
genre VARCHAR (20) NOT NULL,
PRIMARY KEY (movieid)
);

CREATE TABLE audience (
nameid INTEGER NOT NULL AUTO_INCREMENT , 
firstname VARCHAR(15) NOT NULL ,
lastname VARCHAR(15) NOT NULL ,
PRIMARY KEY (nameid)
);

CREATE TABLE ratings(
ratingid INTEGER NOT NULL AUTO_INCREMENT,
nameid INTEGER,
movieid INTEGER,
rating INTEGER NULL,
PRIMARY KEY (ratingid),
FOREIGN KEY (nameid) REFERENCES audience (nameid) ON UPDATE CASCADE,
FOREIGN KEY (movieid) REFERENCES movies (movieid) ON UPDATE CASCADE
);

INSERT INTO movies (title, genre)
VALUES		('The Lion King (Original', 'Family'),
					('The Dark Night', 'Action'),
                    ('Titanic', 'Drama'),
                    ('Forrest Gump', 'Drama'),
                    ('Jaws', 'Horror'),
                    ('E.T.', 'Science Fiction');
                    
INSERT INTO audience (firstname, lastname)
VALUES		('Amel', 'H'),
					('Dina', 'H'),
                    ('Mario', 'P'),
                    ('Ana', 'J'),
                    ('Teresa', 'C'),
                    ('Alba', 'P');
                    
INSERT INTO ratings (nameid, movieid, rating)
VALUES		('1', '1', '5'),
					('1', '2', '5'),
                    ('1', '3', '5'),
                    ('1', '4', NULL),
                    ('1', '5', '3'),
                    ('1', '6', '4'),
                    ('2', '1', '5'),
					('2', '2', '5'),
                    ('2', '3', '5'),
                    ('2', '4', '5'),
                    ('2', '5', '2'),
                    ('2', '6', '4'),
                    ('3', '1', '4'),
					('3', '2', '5'),
                    ('3', '3', '4'),
                    ('3', '4', '5'),
                    ('3', '5', '1'),
                    ('3', '6', '3'),
                    ('4', '1', '5'),
					('4', '2', '4'),
                    ('4', '3', '5'),
                    ('4', '4', '5'),
                    ('4', '5', '4'),
                    ('4', '6', '5'),
                    ('5', '1', '5'),
					('5', '2', '3'),
                    ('5', '3', '4'),
                    ('5', '4', '3'),
                    ('5', '5', '2'),
                    ('5', '6', '4'),
                    ('6', '1', '5'),
					('6', '2', NULL),
                    ('6', '3', '5'),
                    ('6', '4', NULL),
                    ('6', '5', '5'),
                    ('6', '6', '5');
                    