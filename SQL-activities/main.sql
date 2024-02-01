CREATE TABLE students5 (
	id integer PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	middle_name TEXT,
	last_name varchar(100) NOT NULL,
	age INTEGER,
	location varchar(100) NOT NULL
);


SELECT * FROM students5;

INSERT INTO students5 (id, first_name, middle_name, last_name, age, location)
VALUES 
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Isaac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'Lam', 25, 'Manila');

UPDATE students5
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students5
WHERE id = (SELECT MAX(id) FROM students5);

SELECT COUNT(*) AS student_count FROM students5;

SELECT * FROM students5 WHERE location = 'Manila';

SELECT ROUND(AVG(age),2) AS average_age FROM students5;

SELECT * FROM students5 ORDER BY age DESC;

CREATE TABLE classrooms (
	id INTEGER NOT NULL,
	student_id INTEGER,
	section TEXT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (student_id) REFERENCES students5(id)
);
	
SELECT * FROM classrooms;

INSERT INTO classrooms (id, student_id, section)
VALUES
	(1, 1, 'A'),
	(2, 2, 'A'),
	(3, 3, 'B'),
	(4, 4, 'C'),
	(5, 5, 'B'),
	(6, 6, 'A'),
	(7, 7, 'C'),
	(8, 8, 'B'),
	(9, 9, 'B'),
	(10, 10, 'C');
	
-- INNER JOIN
	
SELECT * FROM students5
INNER JOIN classrooms ON students5.id = classrooms.student_id;

-- LEFT JOIN
	
SELECT * FROM students5
LEFT JOIN classrooms ON students5.id = classrooms.student_id;

-- RIGHT JOIN
	;
SELECT * FROM students5
RIGHT JOIN classrooms ON students5.id = classrooms.student_id;

-- FULL JOIN
	
SELECT * FROM students5
FULL JOIN classrooms ON students5.id = classrooms.student_id