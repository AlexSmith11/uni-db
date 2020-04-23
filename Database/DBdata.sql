INSERT INTO Building_Relation(Building, Campus) VALUES
  ('Stapleton' , 'City Campus'),
  ('Sir James Watts' , 'Greenfields'),
  ('Science Building' , 'Science Park'),
  ('Physics' , 'Science Park')
;

INSERT INTO Room_Relation(Room, Building, Style, Seating_Capacity) VALUES
  ('B23' , 'Stapleton' , 'Computer room' , '320'),
  ('B40' , 'Stapleton' , 'Seminar Room' , '70'),
  ('A3' , 'Stapleton' , 'Lecture Theatre' , '85'),
  ('Main Lab' , 'Sir James Watts' , 'Lab' , '50'),
  ('Lecture 1' , 'Science Building' , 'Lecture Theatre' , '60'),
  ('1.45' , 'Physics' , 'Laboratory' , '75'),
  ('A14' , 'Stapleton' , 'Lecture Theatre' , '200')
;

INSERT INTO ModuleID_Relation(ModuleID, Module_Title, Level, Class_Size) VALUES
  ('CS99910' , 'Artificial Intelligence' , '1' , '240'),
  ('CSM2010' , 'Artificial Intelligence' , 'M' , '10'),
  ('HH22820' , 'Roman Empire' , '2' , '56'),
  ('GG23330' , 'Volcanology' , '3' , '43'),
  ('IL43210' , 'Information Retrieval' , '3' , '63'),
  ('LA28320' , 'Constitutional Law' , '1' , '103'),
  ('CS70005' , 'Compiler Design' , '2' , '95')
;

INSERT INTO Timetable_Relation(Times, Day, ModuleID, Room) VALUES
  ('13:00:00' , 'Thursday' , 'CS99910' , 'B23'),
  ('13:00:00',	'Thursday',	'CSM2010',	'B23'),
  ('09:00:00',	'Tuesday',	'HH22820',	'B40'),
  ('14:00:00',	'Friday' ,	'HH22820' ,	'A3'),
  ('10:00:00',	'Tuesday' ,	'GG23330'	, 'Main Lab'),
  ('11:00:00',	'Tuesday' ,	'GG23330' ,	'Main Lab'),
  ('17:00:00',	'Thursday' ,	'GG23330' ,	'Lecture 1'),
  ('10:00:00',	'Wednesday' ,	'IL43210' ,	'1.45'),
  ('11:00:00',	'Wednesday' ,	'LA28320' ,	'A14'),
  ('15:00:00',	'Monday' ,	'CS70005' ,	'1.45')
;
