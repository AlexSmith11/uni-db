SELECT
  Timetable_Relation.times,
  Timetable_Relation.day,
  Timetable_Relation.Room,
  Timetable_Relation.moduleid,
  Room_Relation.building,
  Building_Relation.campus
-- this includes last two as data is for a timetable- suits question/query
FROM Timetable_Relation

INNER JOIN Room_Relation ON Timetable_Relation.Room = Room_Relation.Room
INNER JOIN Building_Relation ON Room_Relation.Building = Building_Relation.Building

WHERE moduleID = 'GG23330'