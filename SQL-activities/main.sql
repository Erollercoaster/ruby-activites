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
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Isaac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'Lam', 25, 'Manila');

UPDATE students2
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students2
WHERE id = (SELECT MAX(id) FROM students2);

SELECT COUNT(*) AS student_count FROM students2;

SELECT * FROM students2 WHERE location = 'Manila';

SELECT AVG(age) AS average_age FROM students2;

SELECT * FROM students2 ORDER BY age DESC;