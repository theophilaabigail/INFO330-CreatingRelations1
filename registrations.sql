CREATE TABLE student_courses (
  studentid INTEGER REFERENCES students(id),
  course VARCHAR(40) REFERENCES courses(code),
  grade FLOAT DEFAULT NULL
);

INSERT INTO student_courses (studentid, course)
  SELECT s.id, c.code
  FROM students s
  JOIN courses c
  WHERE s.FirstName = 'Fred' AND c.code IN ('INFO330A', 'INFO448A', 'INFO314');

INSERT INTO student_courses (studentid, course)
  SELECT s.id, c.code
  FROM students s
  JOIN courses c
  WHERE s.FirstName = 'Barney' AND c.code IN ('INFO330A', 'INFO449A');

INSERT INTO student_courses (studentid, course)
  SELECT s.id, c.code
  FROM students s
  JOIN courses c
  WHERE s.FirstName = 'Wilma' AND c.code IN ('BAW0100', 'BAW100A');

INSERT INTO student_courses (studentid, course)
  SELECT s.id, c.code
  FROM students s
  JOIN courses c
  WHERE s.FirstName = 'Betty' AND c.code = 'BAW0100';