CREATE TABLE Building_Relation (
  Building VARCHAR(40) NOT NULL,
  Campus VARCHAR(30) NOT NULL,
  PRIMARY KEY(Building)
  );

CREATE TABLE Room_Relation (
  Room VARCHAR(20) NOT NULL,
  Building VARCHAR(40) NOT NULL,
  Style VARCHAR(20) NOT NULL,
  Seating_Capacity INT NOT NULL,
  PRIMARY KEY(Room),
  FOREIGN KEY(Building) REFERENCES Building_Relation (Building)
);

CREATE TABLE ModuleID_Relation (
  ModuleID CHAR(7) NOT NULL,
  Module_Title VARCHAR(80) NOT NULL,
  Level CHAR NOT NULL,
  Class_Size INT NOT NULL,
  PRIMARY KEY(ModuleID)
);

CREATE TABLE Timetable_Relation (
  ModuleID CHAR(7) NOT NULL,
  Room VARCHAR(20) NOT NULL,
  Times TIME NOT NULL,
  Day VARCHAR(9) NOT NULL,

  CHECK (Day = 'Monday' OR Day = 'Tuesday' OR Day = 'Wednesday' OR Day = 'Thursday' OR Day = 'Friday'),

  CONSTRAINT Hour_Times CHECK ((EXTRACT(HOUR FROM Times) >=9) AND (EXTRACT(HOUR FROM Times)<=17)),
  CONSTRAINT Wed_Times CHECK (NOT (day = 'Wednesday' AND (EXTRACT(HOUR FROM Times) >= 12))),

  PRIMARY KEY (Times, Day, ModuleID, Room),
  FOREIGN KEY (ModuleID) REFERENCES ModuleID_Relation (ModuleID),
  FOREIGN KEY (Room) REFERENCES Room_Relation (Room)
);