
-- Create ANIMALS table:

CREATE TABLE ANIMALS (
	id INTEGER,
	name TEXT NOT NULL,
	species TEXT NOT NULL,
	age INTEGER,
	fed INTEGER CHECK(fed IN (0,1)) NOT NULL,
	fav_food TEXT,
	PRIMARY KEY(id)
);

--Add  animals:
INSERT INTO ANIMALS ("name","species","age","fed","fav_food") VALUES ("Bear","Brown Bear",10,1,"insects");
INSERT INTO ANIMALS ("name","species","age","fed","fav_food") VALUES ("Lion","Asiatic Lion",8,0,"meat");
INSERT INTO ANIMALS ("name","species","age","fed","fav_food") VALUES ("Tiger","Bengal",11,1,"deer and wild boar");
INSERT INTO ANIMALS ("name","species","age","fed","fav_food") VALUES ("Giraffe","Northern giraffe",18,1,"leaf");

--Update age for the animal with id=1:
UPDATE ANIMALS SET age = 5 WHERE id=1;

--Update fed for the animal with id=4:
UPDATE ANIMALS SET fed = 0  WHERE id=4;

--Update species for the animal with name='Bear':
UPDATE ANIMALS SET species = 'Sun bear' WHERE name = 'Bear';

--Remove fav_food column:
ALTER TABLE ANIMALS DROP COLUMN fav_food;

--Delete animal with id=3:
DELETE FROM ANIMALS WHERE id=3;

--Add origin column:
ALTER TABLE ANIMALS ADD origin TEXT;

--Set origin:
UPDATE ANIMALS SET origin = 'India' WHERE id = 4; 
UPDATE ANIMALS SET origin = 'China' WHERE id = 1;