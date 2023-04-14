CREATE TABLE students (
    id INTEGER PRIMARY KEY NOT NULL,
    firstname VARCHAR(40),
    lastname VARCHAR(80),
    age INT
);

INSERT INTO students (firstname, lastname, age) VALUES
('Fred', 'Flintstone', 33),
('Barney', 'Rubble', 33),
('Betty', 'Rubble', 29),
('Pebbles', 'Flintstone', 1),
('Bam-Bam', 'Rubble', 1),
('Eugene', 'Alexander', 18),
('Stephanny', 'Kusmana', 18),
('Steven', 'Wilbert', 18);