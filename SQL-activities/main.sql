CREATE TABLE students2 (
	id integer PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	middle_name text,
	last_name varchar(100) NOT NULL,
	age integer,
	location varchar(100) NOT NULL
);

SELECT * FROM students2;

INSERT INTO students2 (id, first_name, middle_name, last_name, age, location)
VALUES 
(1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Blank', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila'),
(4, 'Isaac', 'Blank', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina'),
(6, 'Finn', 'Blank', 'Lam', 25, 'Manila');

UPDATE students2
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 6;

DELETE FROM students2
WHERE id = (SELECT MAX(id) FROM students);