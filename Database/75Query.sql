--list all classes that have less than 75% of pupils
SELECT
  Timetable_Relation.times,
  Timetable_Relation.day,
  Timetable_Relation.Room,
  sum(class_size),
  seating_capacity


FROM timetable_relation

INNER JOIN Room_Relation on timetable_relation.room = room_relation.room
INNER JOIN moduleid_relation ON timetable_relation.moduleid = moduleid_relation.moduleid
INNER JOIN Building_Relation ON Room_Relation.Building = Building_Relation.Building

GROUP BY moduleid_relation.class_size, room_relation.seating_capacity, Timetable_Relation.times, Timetable_Relation.day, Timetable_Relation.Room
HAVING CAST(sum(class_size) AS FLOAT)/CAST(seating_capacity AS FLOAT)<0.75