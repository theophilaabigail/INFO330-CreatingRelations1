CREATE TABLE buildings (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY(buildingid) REFERENCES buildings(id)
);

INSERT INTO buildings (name, shortname) VALUES ('Johnson Hall', 'JHNS');
INSERT INTO buildings (name, shortname) VALUES ('Kane Hall', 'KNE');
INSERT INTO rooms (number, buildingid, seating) VALUES (201, 1, 30);
INSERT INTO rooms (number, buildingid, seating) VALUES (300, 2, 25);

