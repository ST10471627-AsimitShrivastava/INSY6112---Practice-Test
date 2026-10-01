-- Q.3.1.1
-- I create the butterflies2022 schema.
CREATE SCHEMA butterflies2022;

-- I select the butterflies2022 schema to use.
USE butterflies2022;

-- I create the Author table that was already provided in the question.
CREATE TABLE author (
authorid INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name varchar(100),
lastname varchar(100)
);


-- Q.3.1.2
-- I rename lastname to surname and make surname a required field.
ALTER TABLE author
CHANGE COLUMN lastname surname VARCHAR(100) NOT NULL;


-- Q.3.2
-- I create the Paper table with a foreign key to the Author table.
CREATE TABLE paper (
    paperid INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    authorid INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    date DATE,
    CONSTRAINT fk_paper_author
        FOREIGN KEY (authorid) REFERENCES author(authorid)
);


-- Q.3.3
-- I insert the first author into the Author table.
INSERT INTO author (authorid, name, surname)
VALUES (1, 'Bob', 'Smith');

-- I insert the second author into the Author table.
INSERT INTO author (authorid, name, surname)
VALUES (2, 'Sarah', 'McLaglenna');


-- Q.3.4
-- I change Sarah's surname from McLaglenna to McLaglen.
UPDATE author
SET surname = 'McLaglen'
WHERE authorid = 2;