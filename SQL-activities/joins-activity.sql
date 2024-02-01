CREATE TABLE students_2 (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name TEXT,
    last_name VARCHAR(100) NOT NULL,
    age INTEGER,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE research_papers (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    grade VARCHAR(1),
    FOREIGN KEY (student_id) REFERENCES students_2(id)
);

INSERT INTO students_2 (id, first_name, middle_name, last_name, age, location)
VALUES 
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Isaac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'Lam', 25, 'Manila');

INSERT INTO research_papers (id, student_id, grade)
VALUES
    (1, 1, 'A'),
    (2, 1, 'B'),
    (3, 2, 'C'),
    (4, 2, NULL),
    (5, 3, 'A'),
    (6, 3, 'B'),
    (7, 4, 'D'),
    (8, 4, 'E'),
    (9, 5, 'F'),
    (10, 5, 'C');

-- multiple research papers
SELECT 
    s.first_name, 
    s.last_name, 
    COUNT(rp.id) AS number_of_research_papers
FROM students_2 s
JOIN research_papers rp ON s.id = rp.student_id
GROUP BY s.id
HAVING COUNT(rp.id) > 1;

-- ungraded research papers
SELECT 
    s.first_name, 
    s.last_name, 
    rp.id AS research_paper_id, 
    rp.grade
FROM students_2 s
JOIN research_papers rp ON s.id = rp.student_id
WHERE rp.grade IS NULL;
