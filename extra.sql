-- create timeslots table
CREATE TABLE timeslots (
  id INTEGER PRIMARY KEY NOT NULL,
  start_time TIME,
  end_time TIME
);

-- insert time slots to timeslots
INSERT INTO timeslots (start_time, end_time)
VALUES
  ('08:00:00', '10:00:00'),
  ('13:00:00', '14:00:00');


-- delete rooms table and replace with a new one (with a primary key col)
DROP TABLE rooms;
CREATE TABLE rooms (
  id INTEGER PRIMARY KEY NOT NULL,
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY(buildingid) REFERENCES buildings(id)
);

-- create table schedule
CREATE TABLE schedule (
  id INTEGER PRIMARY KEY NOT NULL,
  coursecode VARCHAR(5),
  roomid INT,
  timeslotid INT,
  FOREIGN KEY (roomid) REFERENCES rooms(id),
  FOREIGN KEY (timeslotid) REFERENCES timeslots(id),
  CONSTRAINT time_slot UNIQUE (roomid, timeslotid)
);

-- input data to table schedule
INSERT INTO schedule (coursecode, roomid, timeslotid)
VALUES
  ('INFO 330', 1, 1),
  ('INFO 300', 2, 2);




